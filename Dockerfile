FROM alpine:3.14
ARG CURATOR_VERSION=5.8.4
RUN apk add --update python py-pip
RUN pip install -U elasticsearch-curator==$CURATOR_VERSION
ENTRYPOINT ["curator"]
