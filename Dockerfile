FROM alpine

RUN apk add --no-cache openssh-client ca-certificates

COPY script.sh /script.sh
RUN chmod +x /script.sh

CMD /script.sh
