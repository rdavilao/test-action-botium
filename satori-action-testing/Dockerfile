FROM rasa/rasa:1.10.14-full
COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "777", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]