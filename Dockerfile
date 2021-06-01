FROM logstash:7.12.1

ADD ./docker_start.sh /

ENTRYPOINT ["/docker_start.sh"]
