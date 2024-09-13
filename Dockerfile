FROM ubuntu:22.04

RUN apt update && \
    apt install -y curl expect && \
    curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash && \
    apt update && \
    apt install -y speedtest

COPY [ "speedtest-automated.sh", "/" ]

ENTRYPOINT [ "/speedtest-automated.sh" ]