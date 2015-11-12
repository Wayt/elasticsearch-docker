#!/bin/sh

export CLUSTER_NAME=${CLUSTER_NAME:-elasticsearch-default}
export NODE_MASTER=${NODE_MASTER:-true}
export NODE_DATA=${NODE_DATA:-true}
export HTTP_ENABLE=${HTTP_ENABLE:-true}
export MULTICAST=${MULTICAST:-false}

export NAMESPACE=${NAMESPACE:-default}
export DISCOVERY_SERVICE=${DISCOVERY_SERVICE:-elasticsearch-discovery}

export DATA_DIR=${DATA_DIR:-/usr/share/elasticsearch/data}
export LOG_DIR=${DATA_DIR:-/usr/share/elasticsearch/logs}
export PLUGINS_DIR=${DATA_DIR:-/usr/share/elasticsearch/plugins}
export WORK_DIR=${DATA_DIR:-/usr/share/elasticsearch/work}

/usr/share/elasticsearch/bin/elasticsearch
