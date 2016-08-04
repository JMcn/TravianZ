## BUILDING
##   (from project root directory)
##   $ docker build -t jmcn-travianz .
##
## RUNNING
##   $ docker run -p 9000:9000 jmcn-travianz
##
## CONNECTING
##   Lookup the IP of your active docker host using:
##     $ docker-machine ip $(docker-machine active)
##   Connect to the container at DOCKER_IP:9000
##     replacing DOCKER_IP for the IP of your active docker host

FROM gcr.io/stacksmith-images/ubuntu-buildpack:14.04-r8

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="g3f3b60" \
    STACKSMITH_STACK_NAME="JMcn/TravianZ" \
    STACKSMITH_STACK_PRIVATE="1"

RUN bitnami-pkg install php-7.0.9-0 --checksum 206d8b7698328dad514fc6c61c8560b652aa8846a404a3415ca0086772d6a032

ENV PATH=/opt/bitnami/php/bin:$PATH

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# PHP base template
COPY . /app
WORKDIR /app

CMD ["php", "-a"]
