FROM alpine:3.2
MAINTAINER Ross Fairbanks "ross@force12.io"

COPY sleep.sh /sleep.sh

ENTRYPOINT ["/sleep.sh"]
