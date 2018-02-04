ARG VERSION=9

FROM maven:3-jdk-${VERSION}


# Workaround for broken JDK9
RUN if java -fullversion 2>&1 | grep -q '"9.'; \
    then \
        wget https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/openjdk-9-slim-cacerts \
        -O /etc/ssl/certs/java/cacerts; \
    fi

