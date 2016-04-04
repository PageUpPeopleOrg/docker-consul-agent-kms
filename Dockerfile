FROM gliderlabs/consul:0.6
ADD ./config /config/
EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp
ENV DNS_RESOLVES consul
ENV DNS_PORT 8600

RUN apk add --update git go && \
rm -rf /var/cache/apk/*

ENV GOPATH /go
ENV GOBIN $GOPATH/bin
ENV PATH $GOBIN:$PATH

WORKDIR /go/src/github.com/realestate-com-au/shush
COPY shush /go/src/github.com/realestate-com-au/shush
ENV GOPATH /go/src/github.com/realestate-com-au/shush/Godeps/_workspace:$GOPATH
RUN go get .

ENTRYPOINT []
CMD /config/start.sh
