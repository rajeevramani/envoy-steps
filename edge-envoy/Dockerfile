#FROM lyft/envoy:latest
# FROM dwflynn/envoy-debug:20170501
FROM envoyproxy/envoy:v1.23-latest

RUN apt-get update && apt-get -q install -y \
    curl \
    dnsutils
COPY envoy.yaml /etc/envoy.yaml
CMD /usr/local/bin/envoy -c /etc/envoy.yaml
