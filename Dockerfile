FROM logstash:7.16.1

ADD ./docker_start.sh /

ENTRYPOINT ["/docker_start.sh"]
