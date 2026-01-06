#!/bin/bash
set -euo pipefail

# Build a multi-arch manifest by default (amd64 + arm64). Override with PLATFORMS or IMAGE/TAG if needed.
IMAGE=${IMAGE:-georgenicoll/speed-test-cli}
TAG=${TAG:-latest}
PLATFORMS=${PLATFORMS:-linux/amd64,linux/arm64}

podman build \
	--format=docker \
	--manifest "${IMAGE}:${TAG}" \
	--platform "${PLATFORMS}" \
	.
