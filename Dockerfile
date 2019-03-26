# squid-net-speeder

FROM ubuntu:16.04
MAINTAINER puochan <harmonysekai@yahoo.co.jp>
RUN apt-get update && \
	apt-get clean  && \
	apt-get install -y ruby && \
    apt-get clean

COPY gost /gost
RUN chmod +x /gost
COPY bridge /bridge
RUN chmod +x /bridge

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 8080

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]