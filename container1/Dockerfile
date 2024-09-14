FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository ppa:oisf/suricata-stable && \
    apt-get update && apt-get install -y \
    tcpdump \
    tshark \
    suricata \
    dnsutils \
    bind9 \
    bind9utils \
    bind9-doc

# Configure DNS for recursion
RUN echo "options {\n recursion yes;\n};" > /etc/bind/named.conf.options

# Expose DNS and SSH ports
EXPOSE 53/udp 22

# Start services
CMD ["bash", "-c", "service ssh start && service bind9 start && suricata -c /etc/suricata/suricata.yaml -i eth0"]
