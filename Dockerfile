FROM fluent/fluentd:v1.11.0-debian-1.0

USER root
WORKDIR /home/fluent

RUN apt-get update \
    && gem install fluent-plugin-kafka \
    && gem install fluent-plugin-kubernetes \
    && gem install fluent-plugin-record-reformer \
    && rm -rf /var/lib/apt/lists/* \
    && gem sources --clear-all \
    && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem

# Copying fluentd conf to docker image
COPY fluentd.conf /fluentd/etc/fluentd.conf
# Starting fluentd process
CMD exec fluentd -c /fluentd/etc/fluentd.conf