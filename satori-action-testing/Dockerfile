FROM ubuntu:latest
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nodejs -y
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]