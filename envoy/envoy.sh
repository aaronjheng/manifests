#!/usr/bin/env bash

envoy -c envoy.yaml
# envoy --mode validate -c envoy.yaml --config-yaml "$(cat envoy.override.yaml)"
