FROM ubuntu

RUN apt update && \
    apt install -y curl expect && \
    curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash && \
    apt install -y speedtest
COPY [ "speedtest-automated.sh", "/" ]

ENTRYPOINT [ "/speedtest-automated.sh" ]