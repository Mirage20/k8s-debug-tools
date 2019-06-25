FROM ubuntu:16.04
RUN apt-get update && apt-get install -y curl wget telnet iputils-ping dnsutils net-tools netcat iptables

RUN wget https://storage.googleapis.com/jblabs/dist/hey_linux_v0.1.2
RUN mv hey_linux_v0.1.2 /usr/local/bin/hey
RUN chmod +x /usr/local/bin/hey


ENTRYPOINT ["tail","-f","/dev/null"]
