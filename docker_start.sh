#!/bin/bash

if [[ -d "/custom_config" ]] && [[ "${DEV_ENV:-false}" != "true" ]]
then
    echo "/custom_config exists on your filesystem."
    rm /usr/share/logstash/pipeline/logstash.conf
    ln -s /custom_config/logstash/logstash.conf /usr/share/logstash/pipeline
    rm /usr/share/logstash/config/logstash.yml
    ln -s /custom_config/logstash/logstash.yml /usr/share/logstash/config
fi

/usr/local/bin/docker-entrypoint "$@"