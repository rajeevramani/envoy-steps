#FROM lyft/envoy:latest
FROM envoyproxy/envoy:v1.23-latest

RUN apt-get update && apt-get -q install -y \
    curl \
    dnsutils
COPY envoy-config.yaml /etc/envoy-config.yaml 
COPY envoy-lds.yaml /etc/envoy-lds.yaml
COPY envoy-cds.yaml /etc/envoy-cds.yaml
COPY envoy-rds.yaml /etc/envoy-rds.yaml
COPY envoy-eds.yaml /etc/envoy-eds.yaml
CMD envoy -c /etc/envoy-config.yaml
