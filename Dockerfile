FROM ubuntu:18.04

RUN apt update
RUN apt -qq update
RUN apt install -y python build-essential git
RUN apt install -y nodejs npm
RUN apt install -y docker.io
RUN apt install -y docker-compose

RUN git clone https://github.com/giper45/DockerSecurityPlayground.git /home

WORKDIR /home/DockerSecurityPlayground

RUN npm install
COPY run.sh /run.sh

EXPOSE 8080

ENTRYPOINT ["/bin/bash", "/run.sh"]