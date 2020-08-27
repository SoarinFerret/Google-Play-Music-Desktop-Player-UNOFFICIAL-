FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
  build-essential g++-multilib lib32z1 lib32ncurses5 fakeroot dpkg libdbus-1-dev libx11-dev g++ libavahi-compat-libdnssd-dev gcc-4.8-multilib g++-4.8-multilib libnotify4 libexpat1-dev \
  nodejs npm yarn git \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g npm@latest && hash -r

WORKDIR /app
COPY build.sh /
RUN chmod +x /build.sh
ENTRYPOINT ["/build.sh"]
