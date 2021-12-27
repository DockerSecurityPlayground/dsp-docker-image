FROM ubuntu:18.04

RUN apt-get -qq update && apt-get install -y python build-essential git curl && curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y docker.io docker-compose nodejs
RUN git clone https://github.com/giper45/DockerSecurityPlayground.git /home

WORKDIR /home/DockerSecurityPlayground

RUN npm install

COPY . .

ENTRYPOINT ["/bin/bash", "./run.sh"]

