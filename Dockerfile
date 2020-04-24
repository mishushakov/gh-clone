FROM alpine:latest
WORKDIR /gh-clone
COPY . .
RUN apk add git curl jq
ENTRYPOINT ["./gh-clone.sh", "."]
