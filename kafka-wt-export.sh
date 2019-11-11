export KAFKA_OPTS="-Djava.security.auth.login.config=/opt/bitnami/kafka/conf/kafka_jaas.conf"

for i in `seq 10`; do cat /etc/hostname | /opt/bitnami/kafka/bin/kafka-console-producer.sh --broker-list 10.121.1.11:9092 --producer.config /opt/bitnami/kafka/conf/producer.properties --topic test; done
