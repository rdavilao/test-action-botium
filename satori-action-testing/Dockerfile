FROM ubuntu:latest
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update && apt-get upgrade -y
RUN apt-get install curl -y
RUN apt-get install nodejs -y
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]