# Container image that runs your code
FROM hashicorp/packer:1.5.6

COPY sonarqube/ /

ENTRYPOINT ["ls -la", "ls -la files", "/entrypoint.sh"]
