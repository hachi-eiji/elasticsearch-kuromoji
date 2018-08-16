FROM docker.elastic.co/elasticsearch/elasticsearch:5.5.3

MAINTAINER hachi-eiji<hachiyae@gmail.com>

COPY --chown=elasticsearch:elasticsearch elasticsearch.yml /usr/share/elasticsearch/config/
RUN bin/elasticsearch-plugin install analysis-kuromoji
