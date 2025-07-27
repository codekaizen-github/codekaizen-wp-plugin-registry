FROM ghcr.io/codekaizen-github/orashub:v1 AS final

ENV ORASHUB_CONFIG_PATH=/codekaizen-wp-plugin-registry/config.yaml
ENV ORASHUB_TEMPLATES_PATH=/codekaizen-wp-plugin-registry/templates

COPY src/ /codekaizen-wp-plugin-registry/

