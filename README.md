# Speedtest Client Docker Container

Docker packaging of the [Ookla Speed Test Client](https://www.speedtest.net/apps/cli).  
This includes an expect script wrapper to avoid having to manually accept the license agreements:
running this implicitly means that you are accepting the licensing aggreements. 

Run in docker as follows:

    docker run -it georgenicoll/speed-test-cli

Similarly, using podman:

    podman run -it georgenicoll/speed-test-cli

