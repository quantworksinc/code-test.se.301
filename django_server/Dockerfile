FROM python:3.6
MAINTAINER Avais Pagarkar

WORKDIR /app
ENV PYTHONUNBUFFERED 1
COPY . /app
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update 
RUN apt-get install -y apt-utils
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install -g n 
RUN npm install -g npm@latest
RUN n lts
CMD ["/bin/bash", "/app/entrypoint.sh"]
