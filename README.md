# Speedtest Client Docker Container

Docker packaging of the [Ookla Speed Test Client](https://www.speedtest.net/apps/cli).  
This includes an expect script wrapper to avoid having to manually accept the license agreements:
running this implicitly means that you are accepting the licensing agreements. 

Run in docker as follows:

    docker run -it georgenicoll/speed-test-cli

Similarly, using podman:

    podman run -it georgenicoll/speed-test-cli

## Building multi-arch images (amd64 + arm64)

Podman (default targets amd64,arm64):

    ./podman-build.sh
    ./podman-push.sh

Adjust platforms with `PLATFORMS=linux/amd64,linux/arm64,linux/ppc64le` if needed. For Docker buildx, an equivalent command is:

    docker buildx build --platform linux/amd64,linux/arm64 -t georgenicoll/speed-test-cli --push .

