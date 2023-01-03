#!/bin/bash

mkdir -p $ENVOY_HOME/logs

CONF=$ENVOY_HOME/envoy.yaml
echo "admin:" >$CONF
echo "  address:" >>$CONF
echo "    socket_address: { address: 0.0.0.0, port_value: 9901 }" >> $CONF
envoy --config-path $config_path
