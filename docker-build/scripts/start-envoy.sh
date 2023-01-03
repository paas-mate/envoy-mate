#!/bin/bash

mkdir -p $ENVOY_HOME/logs

CONF=$ENVOY_HOME/envoy.yaml
if [ -f "$CONF" ]; then
  echo "$CONF exists, just start"
else
  echo "admin:" >$CONF
  echo "  address:" >>$CONF
  echo "    socket_address: { address: 0.0.0.0, port_value: 9901 }" >> $CONF
fi
envoy --config-path $config_path
