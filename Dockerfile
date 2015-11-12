FROM elasticsearch:1.7.3

# Mainly from https://github.com/pires/docker-elasticsearch-kubernetes

MAINTAINER max@wayt.me


# Override elasticsearch.yml config, otherwise plug-in install will fail
ADD do_not_use.yml /usr/share/elasticsearch/config/elasticsearch.yml

# Install Elasticsearch plug-ins
RUN /usr/share/elasticsearch/bin/plugin -i io.fabric8/elasticsearch-cloud-kubernetes/1.3.0 --verbose

# Override elasticsearch.yml config, otherwise plug-in install will fail
ADD elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# Copy run script
COPY run.sh /
