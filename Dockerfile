# Container image that runs your code
FROM hashicorp/packer:1.5.6

COPY sonarqube/ /
COPY sonarqube/packer.json /packer.json

ENTRYPOINT ["/entrypoint.sh"]
