From alpine:latest
LABEL maintainer="rajib43.datta@gmail.com"

# Add repo file
COPY README.txt /README.txt

# Install cool software
RUN  apk add --no-cache curl git && \
     curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
     install -m 0755 kubectl /usr/local/bin/kubectl    
#cp kubectl /usr/local/bin/kubectl && \
#     chmod +x /usr/local/bin/kubectl

#ENTRYPOINT ["/usr/bin/nmap"]
#CMD ["-sn", "172.17.0.0/24"]
