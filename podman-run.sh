#!/bin/bash
set -euo pipefail

# Run the image locally or from a registry. Override IMAGE/TAG if needed.
IMAGE=${IMAGE:-georgenicoll/speed-test-cli}
TAG=${TAG:-latest}

# Podman will auto-select the correct platform variant from the manifest
podman run --rm -it "localhost/${IMAGE}:${TAG}"
