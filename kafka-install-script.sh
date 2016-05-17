cp /vagrant/kafka_2.11-0.9.0.1.tgz .
tar xzf kafka_2.11-0.9.0.1.tgz
JMX_PORT=9998 KAFKA_JMX_OPTS="-Dcom.sun.management.jmxremote=true -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.authenticate=false  -Dcom.sun.management.jmxremote.ssl=false -Djava.rmi.server.hostname=kafka1" kafka_2.11-0.9.0.1/bin/kafka-server-start.sh server.properties &
