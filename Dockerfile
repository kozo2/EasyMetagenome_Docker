FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -qq && \
    apt install -y --no-install-recommends wget ca-certificates unzip && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

COPY 0Install.sh /tmp/0Install.sh
RUN bash /tmp/0Install.sh
