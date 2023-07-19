FROM debian:latest
# install git - apt-get replace with apk
RUN apt update && \
    # apt install nodejs build-essential -y \
    apt install git openssh
RUN apt install curl sudo -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
RUN apt install nodejs
RUN npm install --global yarn
RUN git clone https://github.com/dg1126971/wichat.git
RUN cd wichat
RUN yarn start
EXPOSE 3000
# CMD ["yarn","start"]
