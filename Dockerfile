FROM ubuntu:16.04
RUN apt-get update && apt-get install -y curl telnet iputils-ping dnsutils

ENTRYPOINT ["tail","-f","/dev/null"]