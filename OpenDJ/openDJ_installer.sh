#! /usr/bin/bash

wget https://github.com/OpenRock/OpenDJ/releases/download/3.0.0/OpenDJ-3.0.0.zip
unzip OpenDJ-3.0.0.zip

opendj/setup --no-prompt -O -i -p 2389 --ldapsPort 2636 --enableStartTLS --generateSelfSignedCertificate -D "cn=vpapidokha" -w "12345678" -b "dc=pain,dc=com" -h "localhost.localdomain" --adminConnectorPort 6444 -t je

/bin/import-ldif -b "dc=pain,dc=com" -l schema.ldif

rm -rf OpenDJ-3.0.0.zip
