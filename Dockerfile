FROM alpine:3.3
MAINTAINER Ross Fairbanks "ross@microscaling.com"

COPY sleep.sh /sleep.sh

ENTRYPOINT ["/sleep.sh"]
