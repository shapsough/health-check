FROM alpine:latest
RUN apk add --no-cache curl bash
COPY ./check.sh /usr/src/health-check/check.sh
WORKDIR /usr/src/health-check
CMD [ "/bin/bash", "./check.sh" ]
