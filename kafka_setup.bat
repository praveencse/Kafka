start /min cmd /k C:\zookeeper-3.4.13\bin\zkserver stop
timeout 5
start /min cmd /k C:\zookeeper-3.4.13\bin\zkserver
timeout 5
start /min cmd /k C:\kafka_2.11-2.1.1\bin\windows\kafka-server-start.bat C:\kafka_2.11-2.1.1\config\server.properties
start /min cmd /k C:\kafka_2.11-2.1.1\bin\windows\kafka-topics.bat --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 #
start /min cmd /k C:\kafka_2.11-2.1.1\bin\windows\kafka-console-producer.bat --broker-list localhost:9092 --topic test
start /min cmd /k C:\kafka_2.11-2.1.1\bin\windows\kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic test
timeout 5

