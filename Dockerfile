FROM openshift/origin-logging-fluentd:v3.11

# Remove all the es related configs
RUN rm -rf /etc/fluent/configs.d/openshift/output-es-*.conf

COPY configs.d /etc/fluent/configs.d
