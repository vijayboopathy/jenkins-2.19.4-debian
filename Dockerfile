FROM jenkins:2.19.4
USER root
RUN apt install -y wget \
    && wget -qO- get.docker.com | sh \
    && systemctl enable docker \
    && usermod -aG docker jenkins \ 
    && curl -L https://github.com/docker/compose/releases/download/1.12.0/docker-compose-`uname -s`-`uname -m` > ~/docker-compose \
    && chmod 755 ~/docker-compose 
USER jenkins      
