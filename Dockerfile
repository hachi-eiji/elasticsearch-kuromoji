FROM elasticsearch:2.4.6-alpine

MAINTAINER hachi-eiji<hachiyae@gmail.com>

RUN plugin install analysis-kuromoji
RUN plugin install analysis-icu
