cp /vagrant/zookeeper-3.4.8.tar.gz .
tar xzf zookeeper-3.4.8.tar.gz
cp /vagrant/zoo.cfg zookeeper-3.4.8/conf/zoo.cfg
mkdir -p /tmp/zookeeper
zookeeper-3.4.8/bin/zkServer.sh start
