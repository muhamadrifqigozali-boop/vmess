FROM teddysun/xray:latest

WORKDIR /etc/xray

COPY config.json /etc/xray/config.json
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
