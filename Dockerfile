FROM ubuntu:14.04
MAINTAINER Oluwaseun Obajobi <oluwaseun.obajobi@namshi.com>

# Need to update the package repo first
RUN apt-get -qq update

# Install Required Packages
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -qq adduser \
    openjdk-7-jre-headless

# Download Elasticsearch Package
ADD  https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.10.deb /tmp/elasticsearch.deb

# Install the Elasticsearch Package
RUN  dpkg -i /tmp/elasticsearch.deb

# Set the clustername and Mountpoint
RUN sed -i 's/^\(\# cluster.name: elasticsearch\)$/\1\ncluster.name: elasticsearch/' /etc/elasticsearch/elasticsearch.yml && \
    sed -i 's/^\(\# path.data: \/path\/to\/data\)$/\1\npath.data: \/data/' /etc/elasticsearch/elasticsearch.yml

# Clean Up packages
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    find /var/log -type f | while read f; do echo -ne '' > $f; done;

# Exposed Volumes
VOLUME ["/data"]

# Expose ports
EXPOSE  9200 9300

CMD  ["/usr/share/elasticsearch/bin/elasticsearch", "-f"]
