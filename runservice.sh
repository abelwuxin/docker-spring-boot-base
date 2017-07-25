#!/usr/bin/env bash

java -Djava.security.egd=file:/dev/./urandom \
        -Dspring.config.location=${properties_file} \
        -XX:+PrintFlagsFinal \
        ${JAVA_OPTIONS} \
        -jar \
        ${jar_name} \
        --${run_rd}
        
