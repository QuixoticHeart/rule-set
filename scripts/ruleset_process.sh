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
                if (substr(suffix, i) in suffixes && substr(suffix, i) != suffix && substr(suffix, i - 1, 1) == ".") {
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

fakeip_dedupe(){
    awk '/^\s*[#;]/ { next } /^$/ { next } { sub(" //.*", ""); print $0 }' $1 | awk '{
        prefix = substr($0, 1, 2)
        content = substr($0, 3)  # 提取后续内容

        if (prefix == "*.") {
            star_content[content] = $0
        } else if (prefix == "+.") {
            plus_content[content] = $0
            print "DOMAIN-SUFFIX," substr($0, 3);  # 立即打印加号行
            delete star_content[content]  # 删除星号行(如果存在)
        } else {
            print "DOMAIN," $0;  # 打印其他行
        }
    }
    END {
        # 打印剩余的星号行
        for (content in star_content) {
            print "DOMAIN," star_content[content];
        }
    }' | domain_dedupe | sort | awk  '
        /^DOMAIN,|^DOMAIN-SUFFIX,/ {
        if ($0 ~ /^DOMAIN-SUFFIX,/) {
            gsub(/^DOMAIN-SUFFIX,/, "+.");
        } else {
            gsub(/^DOMAIN,/, "");
        }
        print $0;
    }'
}

ruleset_sort(){
    awk '
        /^DOMAIN,/          { print "0 " $0; next }
        /^DOMAIN-SUFFIX,/   { print "1 " $0; next }
        /^DOMAIN-KEYWORD,/  { print "2 " $0; next }
        /^DOMAIN-WILDCARD,/ { print "3 " $0; next }
        /^DOMAIN-REGEX,/    { print "4 " $0; next }
        /^IP-CIDR,/         { print "5 " $0; next }
        /^IP-CIDR6,/        { print "6 " $0; next }
        /^IP-ASN,/          { print "7 " $0; next }
        /^PROCESS-NAME,/    { print "8 " $0; next }
        /^GEOSITE,/         { print "9 " $0; next }
        /^GEOIP,/           { print "10 " $0; next }
        /^AND,/             { print "11 " $0; next }
        /^OR,/              { print "12 " $0; next }
        /^NOT,/             { print "13 " $0; next }
        /^DEST-PORT,/       { print "14 " $0; next }
        /^DST-PORT,/        { print "15 " $0; next }
    ' $1 | sort -k1,1n -k2,2 | cut -d' ' -f2-
}