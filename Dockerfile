FROM ghcr.io/codekaizen-github/orashub:v1 AS final

ENV ORASHUB_CONFIG_PATH=/codekaizen-wp-plugin-registry/src/config.yaml
ENV ORASHUB_TEMPLATES_PATH=/codekaizen-wp-plugin-registry/src/templates

COPY src/ /codekaizen-wp-plugin-registry/src/

FROM ubuntu:latest AS dev

RUN apt-get update && apt-get install -y \
    git \
    curl
