Usage:

You need to have aws-credentials.ini

docker run --rm -v aws-credentials.ini:.aws/credentials:ro -v index.html:index.html:ro kosta709/cf-s3-docker-test:master
