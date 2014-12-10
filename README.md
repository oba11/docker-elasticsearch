# Docker-Elasticsearch v1.3.5

* Cluster Name: **elasticsearch**
* Data Path: **/data/**

* Basic Command

  ```
  sudo docker run -it -p 9200:9200 -p 9300:9300 -v ~/data:/data oba11/elasticsearch:1.3.5
  ```

* Advanced Command

  ```
  sudo docker run -it \
  -p 9200:9200 \
  -p 9300:9300 \
  -v ~/data:/data \
  -n es-cluster-01 \
  oba11/elasticsearch:1.3.5 \
  /usr/share/elasticsearch/bin/elasticsearch \
  --node.name=es-cluster-01 \
  --cluster.name=elasticsearch
  ```
