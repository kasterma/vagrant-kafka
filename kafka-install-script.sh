cp /vagrant/kafka_2.11-0.9.0.1.tgz .
tar xzf kafka_2.11-0.9.0.1.tgz
JMX_PORT=9998 kafka_2.11-0.9.0.1/bin/kafka-server-start.sh server.properties &
