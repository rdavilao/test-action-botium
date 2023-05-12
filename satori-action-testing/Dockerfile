FROM ubuntu:latest
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update && apt-get upgrade -y
RUN apt-get install curl -y
RUN apt-get install nodejs -y
RUN apt-get install npm -y
RUN npm install -g botium-cli
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]