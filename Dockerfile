FROM alpine

RUN apk add --no-cache curl jq

COPY install.sh /install.sh

RUN chmod +x /install.sh && FLYCTL_INSTALL=/usr/local /install.sh 0.4.29 && rm /install.sh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
