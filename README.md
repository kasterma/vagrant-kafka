# working on getting experimental setup for kafka

wget http://mirrors.sonic.net/apache/zookeeper/zookeeper-3.3.6/zookeeper-3.3.6.tar.gz
wget http://mirrors.sonic.net/apache/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz

    vagrant up
    vagrant ssh

The next two steps no longer needed, starting of zookeeper is part of script.

    cd zookeeper-xxxx
    sudo bin/zkServer.sh start


wget http://mirror.cogentco.com/pub/apache/kafka/0.9.0.1/kafka_2.11-0.9.0.1.tgz