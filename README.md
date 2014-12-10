# Docker-Elasticsearch v1.4.1

* Cluster Name: **elasticsearch**
* Data Path: **/data/**

* Basic Command

  ```
  docker run -it -p 9200:9200 -p 9300:9300 -v ~/data:/data oba11/elasticsearch:1.4.1
  ```

* Advanced Command

  ```
  docker run -it \
  -p 9200:9200 \
  -p 9300:9300 \
  -v ~/data:/data \
  --name es-cluster-01 \
  oba11/elasticsearch:1.4.1 \
  /usr/share/elasticsearch/bin/elasticsearch \
  --node.name=es-cluster-01 \
  --cluster.name=elasticsearch
  ```

Older Elastic versions tagged
* docker run -it -p 9200:9200 -p 9300:9300 -v ~/data:/data oba11/elasticsearch:1.4.0
* docker run -it -p 9200:9200 -p 9300:9300 -v ~/data:/data oba11/elasticsearch:1.3.6
* docker run -it -p 9200:9200 -p 9300:9300 -v ~/data:/data oba11/elasticsearch:1.3.5
* docker run -it -p 9200:9200 -p 9300:9300 -v ~/data:/data oba11/elasticsearch:1.3.4
* docker run -it -p 9200:9200 -p 9300:9300 -v ~/data:/data oba11/elasticsearch:0.90.10
