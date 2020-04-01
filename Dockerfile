FROM ubuntu:18.04

RUN apt update
RUN apt -qq update
RUN apt install -y python build-essential git curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install -y nodejs
RUN apt install -y docker.io
RUN apt install -y docker-compose

RUN git clone https://github.com/giper45/DockerSecurityPlayground.git /home

WORKDIR /home/DockerSecurityPlayground

RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
