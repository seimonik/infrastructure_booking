kafka-topics --bootstrap-server kafka:29092 --list

echo 'Creating kafka topics'
kafka-topics --bootstrap-server kafka:29092 --create --if-not-exists --topic my-topic --replication-factor 1 --partitions 1

echo 'PaymentService'
kafka-topics --bootstrap-server kafka:29092 --create --if-not-exists --topic payment-service-add-booking --replication-factor 1 --partitions 1

echo 'Successfully created the following topics:'
kafka-topics --bootstrap-server kafka:29092 --list