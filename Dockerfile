FROM ubuntu:20.04

RUN apt-get update &&\
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends ca-certificates curl tcpdump wget telnet iputils-ping dnsutils net-tools netcat iptables &&\
    rm -rf /var/lib/apt/lists/* &&\
    update-ca-certificates &&\
    wget -c -O /usr/local/bin/hey https://storage.googleapis.com/hey-release/hey_linux_amd64 &&\
    chmod +x /usr/local/bin/hey &&\
    wget -c -O /tmp/grpcurl_1.6.0_linux_x86_64.tar.gz https://github.com/fullstorydev/grpcurl/releases/download/v1.6.0/grpcurl_1.6.0_linux_x86_64.tar.gz &&\
    tar -xzf /tmp/grpcurl_1.6.0_linux_x86_64.tar.gz -C /usr/local/bin &&\ 
    chmod +x /usr/local/bin/grpcurl ; 

ENTRYPOINT ["tail","-f","/dev/null"]
