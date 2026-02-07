FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive

COPY 0Install.sh /tmp/0Install.sh
RUN bash /tmp/0Install.sh
