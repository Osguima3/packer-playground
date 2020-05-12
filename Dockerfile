# Container image that runs your code
FROM hashicorp/packer:1.5.6

COPY sonarqube/ /

ENTRYPOINT ["/entrypoint.sh"]
