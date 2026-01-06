FROM ubuntu:24.04

RUN apt update && \
    apt install -y curl expect ca-certificates gnupg && \
    echo "deb [signed-by=/usr/share/keyrings/ookla-speedtest-archive-keyring.gpg] https://packagecloud.io/ookla/speedtest-cli/ubuntu jammy main" > /etc/apt/sources.list.d/ookla-speedtest-cli.list && \
    curl -fsSL https://packagecloud.io/ookla/speedtest-cli/gpgkey | gpg --dearmor -o /usr/share/keyrings/ookla-speedtest-archive-keyring.gpg && \
    apt update && \
    apt install -y speedtest && \
    rm -f /usr/share/keyrings/ookla-speedtest-archive-keyring.gpg /etc/apt/sources.list.d/ookla-speedtest-cli.list

COPY [ "speedtest-automated.sh", "/" ]

ENTRYPOINT [ "/speedtest-automated.sh" ]