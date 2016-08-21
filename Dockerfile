FROM ubuntu:trusty

RUN apt-get update -y && \
	apt-get -y install curl && \
	apt-get -y install man && \
	curl -sL https://deb.nodesource.com/setup_6.x | sudo bash - && \
	apt-get -y install nodejs && \
	npm install -g nodemon

VOLUME /data/app
