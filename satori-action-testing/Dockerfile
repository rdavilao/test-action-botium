FROM rasa/rasa:1.10.25-full
RUN apt-get update && apt-get upgrade -y
COPY entrypoint.sh /entrypoint.sh
USER root
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]