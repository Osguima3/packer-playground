#!/bin/sh

cd sonarqube || exit

packer validate packer.json
