FROM leanlabs/base-builder

COPY ./go-bindata/go-bindata /go-bindata

ENTRYPOINT ["/go-bindata"]
