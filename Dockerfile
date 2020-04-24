FROM alpine:latest
COPY . .
RUN apk add git curl jq
ENTRYPOINT ["/gh-clone.sh", "./gh-clone"]
