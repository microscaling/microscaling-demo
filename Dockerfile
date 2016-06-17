FROM alpine:3.4
MAINTAINER Ross Fairbanks "ross@microscaling.com"

COPY sleep.sh Dockerfile /

# Metadata params
ARG VERSION
ARG VCS_URL
ARG VCS_REF
ARG BUILD_DATE

# Metadata
LABEL org.label-schema.vendor="Microscaling Systems" \
      org.label-schema.license="MIT" \
      org.label-schema.url="https://microscaling.com" \
      org.label-schema.vcs-type="git" \
      org.label-schema.vcs-url=$VCS_URL \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile"

ENTRYPOINT ["/sleep.sh"]
