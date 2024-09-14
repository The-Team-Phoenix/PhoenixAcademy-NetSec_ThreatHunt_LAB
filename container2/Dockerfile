FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository ppa:oisf/suricata-stable && \
    apt-get update && apt-get install -y \
    tcpdump \
    suricata \
    nginx

# Expose ports for web server and SSH
EXPOSE 80 22

# Start services
CMD ["bash", "-c", "service ssh start && service nginx start && suricata -c /etc/suricata/suricata.yaml -i eth0"]
