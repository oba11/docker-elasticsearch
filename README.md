# Docker-Elasticsearch v0.90.10

* Cluster Name: **elasticsearch**
* Data Path: **/data/**

* Basic Command

  ```
  sudo docker run -it -p 9200:9200 -p 9300:9300 -v ~/data:/data oba11/elasticsearch:0.90.10
  ```

* Advanced Command

  ```
  sudo docker run -it \
  -p 9200:9200 \
  -p 9300:9300 \
  -v ~/data:/data \
  -n es-cluster-01 \
  oba11/elasticsearch:0.90.10 \
  /usr/share/elasticsearch/bin/elasticsearch -f \
  -Des.node.name=es-cluster-01 \
  -Des.cluster.name=elasticsearch
  ```
