apt-get -y update
apt-get -y install openjdk-7-jre-headless
cp /vagrant/zookeeper-3.4.8.tar.gz .
tar xzf zookeeper-3.4.8.tar.gz
cp zookeeper-3.4.8/conf/zoo_sample.cfg zookeeper-3.4.8/conf/zoo.cfg
mkdir -p /tmp/zookeeper
zookeeper-3.4.8/bin/zkServer.sh start
