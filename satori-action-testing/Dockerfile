FROM ubuntu:latest
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update && apt-get upgrade
RUN apt-get install nodejs
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]