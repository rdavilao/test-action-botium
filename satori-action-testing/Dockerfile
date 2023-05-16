FROM ubuntu:latest
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update && apt-get upgrade -y
RUN apt-get install software-properties-common -y
RUN apt-get install curl -y
RUN apt-get install nodejs -y
RUN apt-get install npm -y
RUN npm install -g botium-cli
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get install python3.7 -y
RUN apt-get install python3-pip -y
RUN pip uninstall cffi
RUN pip install cffi
RUN pip install psycopg2-binary
RUN pip install rasa==1.10.2
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]