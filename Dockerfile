FROM ubuntu:latest

RUN apt update -y
RUN apt install -y curl
RUN curl -sfL https://raw.githubusercontent.com/lokalise/lokalise-cli-2-go/master/install.sh | sh
