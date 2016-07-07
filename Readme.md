Usage:

Puts /root/index.html to s3://cf-s3-docker-test/index.html

mount volume with s3 credentials /root/.aws/credentials to the container

Example:
docker run --rm -v `pwd`/aws-credentials:/root/.aws/credentials:ro -v `pwd`/index.html:/root/index.html:ro kosta709/cf-s3-docker-test:master


Got to http://cf-s3-docker-test.s3-website-us-east-1.amazonaws.com/ and see new index.html
