FROM ubuntu:latest

RUN apt update && \
  apt install openssl -y \
  && apt clean