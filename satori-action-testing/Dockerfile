FROM rasa/rasa:1.10.25-full
COPY entrypoint.sh /entrypoint.sh
USER root
RUN apt-get --allow-releaseinfo-change update
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install nodejs -y
RUN apt-get install npm -y
RUN npm cache clean -f
RUN npm install -g n
RUN n stable
RUN npm install -g botium-cli
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]