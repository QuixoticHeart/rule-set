#!/bin/bash
clash_domain_to_classical(){
    awk '{
        sub(/[#;].*$/,"");
        sub(/^\./,"+.");
        sub(/^(\*\.)+/,"+.");
        if ($0 ~ /\*|^Mijia Cloud$/) {
            sub(/^Mijia Cloud$/,"Mijia\\sCloud");
            gsub(/\./,"\\.");
            gsub(/\*/,"[^.]+");
            sub(/^+\\\./,".*");
            print "DOMAIN-REGEX,^" $0 "$";
            next;
        } else if ($0 ~ /^+\./) {
            sub(/^+\./,"DOMAIN-SUFFIX,");
            print;
            next;
        } else if ($0 ~ /^\w/) {
            print "DOMAIN," $0;
            next;
        }
    }' $1
}

format_ruleset_no_cidr() {
    awk -F, '
        /^DOMAIN-REGEX/ {
            if (match($0, ",")) {
                $2 = substr($0, RSTART + 1);
                print $1 "," $2;
            }
            next;
        }
        /^DOMAIN|^PROCESS-NAME/ {
            print $1 "," $2;
            next;
        }
    ' "$1"
}

domain_dedupe(){
    awk -F',' '{
        if ($1 == "DOMAIN") {
            domains[$2] = 1;
        } else if ($1 == "DOMAIN-SUFFIX") {
            suffixes[$2] = 1;
        } else if ($1 == "DOMAIN-WILDCARD") {
            wildcards[$2] = 1;
        } else if ($1 == "DOMAIN-REGEX" && match($0, ",")) {
            $2 = substr($0, RSTART + 1);
            regexes[$2] = 1;
        } else {
            other_lines[$0] = 1;
        }
    }
    END {
        for (domain in domains) {
            matched = 0;
            for (i = 1; i <= length(domain); i++) {
                if (i == 1 || substr(domain, i - 1, 1) == ".") {
                    sub_domain = substr(domain, i);
                    if (sub_domain in suffixes) {
                        matched = 1;
                        break;
                    }
                }
            }
            if (!matched) {
                print "DOMAIN," domain;
            }
        }

        for (wildcard in wildcards) {
            matched = 0;
            for (i = 1; i <= length(wildcard); i++) {
                if (i == 1 || substr(wildcard, i - 1, 1) == ".") {
                    sub_wildcard = substr(wildcard, i);
                    if (sub_wildcard in suffixes) {
                        matched = 1;
                        break;
                    }
                }
            }
            if (!matched) {
                print "DOMAIN-WILDCARD," wildcard;
            }
        }

        for (regex in regexes) {
            matched = 0;
            origin_content = regex;
            sub(/^\^/,"",origin_content);
            sub(/\$$/,"",origin_content);
            sub(/^\.\*/,"+.",origin_content);
            gsub(/\[\^\.\]\+/,"*",origin_content);
            gsub(/\\\./,".",origin_content);
            sub(/^Mijia\\sCloud$/,"Mijia Cloud",origin_content);
            for (i = 1; i <= length(origin_content); i++) {
                if (i == 1 || substr(origin_content, i - 1, 1) == ".") {
                    sub_origin_content = substr(origin_content, i);
                    if (sub_origin_content in suffixes) {
                        matched = 1;
                        break;
                    }
                }
            }
            if (!matched) {
                print "DOMAIN-REGEX," regex;
            }
        }

        for (suffix in suffixes) {
            matched = 0;
            if (length(suffix) <= 3) {
                print "DOMAIN-SUFFIX," suffix;
                continue;
            }
            for (i = 3; i <= length(suffix) - 1; i++) {
                if (substr(suffix, i - 1, 1) == ".") {
                    sub_suffix = substr(suffix, i);
                    if (sub_suffix in suffixes) {
                        matched = 1;
                        break;
                    }
                }
            }
            if (!matched) {
                print "DOMAIN-SUFFIX," suffix;
            }
        }

        for (other_line in other_lines) {
            print other_line;
        }
    }' $1
}

dedupe_classical_to_clash_domain(){
    awk -F',' '{
        if ($1 == "DOMAIN") {
            domains[$2] = 1;
        } else if ($1 == "DOMAIN-SUFFIX") {
            suffixes[$2] = 1;
        } else if ($1 == "DOMAIN-REGEX" && match($0, ",")) {
            $2 = substr($0, RSTART + 1);
            regexes[$2] = 1;
        }
    }
    END {
        for (domain in domains) {
            matched = 0;
            for (regex in regexes) {
                if (domain ~ regex) {
                    matched = 1;
                    break;
                }
            }
            if (!matched) {
                print domain;
            }
        }

        for (suffix in suffixes) {
            matched = 0;
            for (regex in regexes) {
                if (substr(regex, 1, 3) == "^.*" || substr(regex, 1, 2) == ".*") {
                    if (suffix ~ regex) {
                        matched = 1;
                        break;
                    }
                }
            }
            if (!matched) {
                print "+." suffix;
            }
        }

        for (regex in regexes) {
            if (substr(regex, 1, 1) == "^" && substr(regex, 2, 2) != ".*") {
                new_regex = "^.*" substr(regex, 2);
                if (new_regex in regexes) {
                    continue;
                }
            }
            sub(/^\^/,"",regex);
            sub(/\$$/,"",regex);
            sub(/^\.\*/,"+.",regex);
            gsub(/\[\^\.\]\+/,"*",regex);
            gsub(/\\\./,".",regex);
            sub(/^Mijia\\sCloud$/,"Mijia Cloud",regex);
            print regex;
        }
    }' $1 | sort -u
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
        /^PROCESS-NAME,/    { print "7 " $0; next }
    ' $1 | sort -k1,1n -k2,2 | cut -d' ' -f2-
}