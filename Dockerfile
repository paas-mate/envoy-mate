FROM ttbb/envoy:nake

WORKDIR /opt/envoy

COPY docker-build /opt/envoy/mate

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/envoy/mate/scripts/start.sh"]
