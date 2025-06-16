FROM alpine:latest

WORKDIR /

RUN apk update
RUN apk add libpcap libpcap-dev go
RUN go install  github.com/fragglet/ipxbox@latest

CMD ["/root/go/bin/ipxbox", "--port=213"]
