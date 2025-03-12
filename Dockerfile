FROM alpine:latest
RUN apk add --no-cache curl
RUN curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh | bash
COPY config.json /usr/local/etc/xray/config.json
CMD ["xray", "run", "-config", "/usr/local/etc/xray/config.json"]
