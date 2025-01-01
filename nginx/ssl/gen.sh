#!/usr/bin/env bash

set -ex

openssl req -newkey rsa:2048 -nodes -keyout example.key -out example.csr -subj "/C=CN/ST=Shanghai/L=Shanghai/O=Aarons/CN=example"

openssl x509 -req -in example.csr -out example.crt -CA ca.crt -CAkey ca.key -CAcreateserial -days 3650 -sha256 -extfile san.cnf

openssl x509 -inform PEM -in example.crt -out example.pem
