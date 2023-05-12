FROM ubuntu:latest
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update && apt-get upgrade -y
RUN apt-get install curl -y
RUN apt-get install nodejs -y
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
RUN echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc \
    && echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc \
    && echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.bashrc
RUN nvm install 15.14.0
RUN apt-get install npm -y
RUN npm install -g botium-cli
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]