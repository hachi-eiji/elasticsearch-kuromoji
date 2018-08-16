FROM docker.elastic.co/elasticsearch/elasticsearch:5.5.3

MAINTAINER hachi-eiji<hachiyae@gmail.com>

RUN elasticsearch-plugin remove x-pack && \
    elasticsearch-plugin install analysis-kuromoji && \
    elasticsearch-plugin install analysis-icu
