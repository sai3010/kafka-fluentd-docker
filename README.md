# kafka-fluentd-docker
 - Dockerised [Fluentd](https://www.fluentd.org/) pushing logs to an [Apache Kafka](http://kafka.apache.org/) topic

# Pre-requisites
- Assuming that you have kafka broker along with zookeeper running
- Knowledge of Docker and fluentd
- Make sure to edit the fluentd.conf as per your needs ( the default one is just a template to   help you get started)

# How to build docker
- sudo docker build -t kafka-fluentd-docker .

## Note
- Tested where fluentd is running in a [k8s](https://kubernetes.io/) cluster. This can also be run as standalone docker by doing necessary changes in the config file.
- Refer to [kafka-fluentd-k8-s-yaml](https://github.com/sai3010/kafka-fluentd-k8-s-yaml) yaml files in order to run this on kubernetes cluster.