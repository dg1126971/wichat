FROM alpine:latest
# install git - apt-get replace with apk
RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash git openssh
RUN git clone https://github.com/dg1126971/wichat.git
RUN cd wichat
RUN set -eux \
    & apk add \
        --no-cache \
        # nodejs \
        # curl \
        yarn
RUN yarn install
EXPOSE 3000
CMD ["yarn","run"]
