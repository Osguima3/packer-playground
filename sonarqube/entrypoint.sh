#!/bin/sh

ls -la sonarqube

packer validate sonarqube/packer.json
