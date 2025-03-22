#!/bin/bash

domain_dedupe(){
    awk -F',' '{
        if ($1 == "DOMAIN") {
            domains[$2] = 1;
        } else if ($1 == "DOMAIN-SUFFIX") {
            suffixes[$2] = 1;
        } else {
            other_lines[NR] = $0;
        }
    }
    END {
        for (domain in domains) {
            matched = 0;
            for (suffix in suffixes) {
                if (index(domain, suffix) != 0 && substr(domain, length(domain) - length(suffix) + 1) == suffix && substr(domain, length(domain) - length(suffix), 1) == "." || domain == suffix) {
                    matched = 1;
                    break;
                }
            }
            if (!matched) {
                print "DOMAIN," domain;
            }
        }

        for (suffix in suffixes) {
            matched = 0;
            for (i = 1; i <= length(suffix); i++) {
                if (substr(suffix, i) in suffixes && substr(suffix, i) != suffix && substr(suffix,i - 1, 1) == ".") {
                    matched = 1;
                    break;
                }
            }
            if (!matched) {
                print "DOMAIN-SUFFIX," suffix;
            }
        }

        for (i in other_lines) {
            print other_lines[i];
        }
    }' $1
}