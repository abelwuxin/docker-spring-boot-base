FROM java:8

RUN echo "Asia/Shanghai" > /etc/timezone && \
        dpkg-reconfigure -f noninteractive tzdata

WORKDIR /usr/src/spring-boot-app

COPY ./wait-for-it.sh /wait-for-it.sh
COPY ./runservice.sh /runservice.sh
RUN chmod +x /wait-for-it.sh && \
        chmod +x /runservice.sh

# IMAGEMAGICK
# Install all the recommended and suggested packages for ImageMagick
RUN \
  apt-get update && \

  apt-get -y install \
    imagemagick && \
  rm -rf /var/lib/apt/lists/*

# Clean the cache created by package installations
RUN \
  apt-get clean
  
