#!/bin/sh

cd sonarqube || exit

packer validate packer.json || exit

packer build packer.json
