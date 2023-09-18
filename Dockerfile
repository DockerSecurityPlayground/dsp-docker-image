FROM docker:dind

RUN apk add --no-cache npm nodejs docker docker-compose python3 alpine-sdk git bash
#&& curl -sL https://deb.nodesource.com/setup_10.x | 
EXPOSE 18181

# VOLUME /var/lib/docker
RUN git clone https://github.com/giper45/DockerSecurityPlayground.git /opt/DockerSecurityPlayground

WORKDIR /opt/DockerSecurityPlayground

RUN npm install
COPY run.sh /run.sh

# ENTRYPOINT tail -f /dev/null
ENTRYPOINT /run.sh
