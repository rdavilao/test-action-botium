FROM rasa/rasa:1.10.14-full
USER root
RUN chmod +x /entrypoint.sh
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]