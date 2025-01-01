#!/usr/bin/env bash
set -ex

openssl genpkey -algorithm RSA -out ca.key

openssl req -new -key ca.key -out ca.csr -subj "/C=CN/ST=Shanghai/L=Shanghai/O=Aarons/CN=Aarons Root"

openssl x509 -req -days 3650 -in ca.csr -signkey ca.key -out ca.crt

openssl x509 -inform PEM -in ca.crt -out ca.pem
