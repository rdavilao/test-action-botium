FROM rasa/rasa:1.10.25-full
COPY entrypoint.sh /entrypoint.sh
USER root
RUN apt-get --allow-releaseinfo-change update
RUN apt-get update -y
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]