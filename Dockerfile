FROM gcr.io/google-containers/debian-base-arm:0.1
RUN apt-get update && apt-get install socat -y && apt-get autoclean
COPY start.sh /
RUN chmod +x /start.sh
ENTRYPOINT [ "/bin/sh" ]
CMD [ "/start.sh" ]
