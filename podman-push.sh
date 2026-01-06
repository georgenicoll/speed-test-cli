#!/bin/bash
set -euo pipefail

# Push the multi-arch manifest. Override IMAGE/TAG/REGISTRY if needed.
IMAGE=${IMAGE:-georgenicoll/speed-test-cli}
TAG=${TAG:-latest}
REGISTRY=${REGISTRY:-docker.io}

podman manifest push --all "localhost/${IMAGE}:${TAG}" "docker://${REGISTRY}/${IMAGE}:${TAG}"
