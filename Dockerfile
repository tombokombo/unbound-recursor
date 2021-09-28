FROM debian:buster-slim
RUN apt-get update && apt-get install -y unbound curl
COPY unbound.conf /etc/unbound/unbound.conf
RUN curl -SsL https://www.internic.net/domain/named.root  -o /etc/unbound/root.hints && ln -sf /dev/stdout /var/log/unbound.log
CMD ["/usr/sbin/unbound", "-d", "-c", "/etc/unbound/unbound.conf"]
