# working on getting experimental setup for kafka

wget http://mirrors.sonic.net/apache/zookeeper/zookeeper-3.3.6/zookeeper-3.3.6.tar.gz
wget http://mirrors.sonic.net/apache/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz

    vagrant up
    vagrant ssh <nodename>

wget http://mirror.cogentco.com/pub/apache/kafka/0.9.0.1/kafka_2.11-0.9.0.1.tgz

Adding:

127.0.0.1       zook1.kasterma-local.net zook1
127.0.0.1       kafka1.kasterma-local.net kafka1
127.0.0.1       kafka2.kasterma-local.net kafka2
127.0.0.1       kafka3.kasterma-local.net kafka3

to /etc/hosts on the host allows to use console consumer also on the
host (it gets the url from zookeeper, and then uses it to find the
host)

## jmxtrans

https://github.com/jmxtrans/jmxtrans/wiki/Installation

wget http://central.maven.org/maven2/org/jmxtrans/jmxtrans/254/jmxtrans-254.deb

export JAR_FILE=/usr/share/jmxtrans/lib/jmxtrans-all.jar

wget http://downloads.sourceforge.net/cyclops-group/jmxterm-1.0-alpha-4-uber.jar

java -jar jmxterm-1.0-alpha-4-uber.jar
open localhost:9998
domain kafka.server
bean name=BrokerState,type=KafkaServer

Configured log file:
    /tmp/kafka1-metrics.txt

App installed in (and then the logs are in the logs directory there)
    /usr/share/jmxtrans

Init script:
    /etc/init.d/jmxtrans

Put .json files into
    /var/lib/jmxtrans