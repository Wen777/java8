FROM abh1nav/baseimage

MAINTAINER wen777 <shih777577@gmail.com>

RUN \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections; \
    add-apt-repository -y ppa:webupd8team/java; \
    apt-get update; \
    apt-get install -y oracle-java8-installer;

RUN \
    # apt-get install oracle-java8-set-default; \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/sbin/my_init"]
