#!/bin/bash

set -eu

function usage
{
  cat <<EOF
$(basename ${0}) is build shell
Usage:
  $(basename ${0}) [argument]
Argument:
  help                   print this
EOF

}

build_mode=${1:-development}
case $build_mode in
  development ) echo "build ${build_mode}" ;;
  help )
    usage
    exit 0
    ;;
  *)
    usage
    exit 1
    ;;
esac

es_versions=`find . -type d -d 1 -not -name ".git" | sed -e "s/\.\///"`

for version in $es_versions
do
  echo "start build ES version is ${version}"
  tag=$version
  docker build -t hachiyae/elasticsearch-kuromoji:"$tag" -f ./$version/Dockerfile .
  echo "finish build ES version is ${version}"
done
