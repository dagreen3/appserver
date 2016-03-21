
FROM golang:alpine

# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/dagreen3/appsrv

# Build inside the container.
# (You may fetch or manage dependencies here,
# either manually or with a tool like "godep".)
RUN go install github.com/dagreen3/appsrv

# Run the command by default when the container starts.
ENTRYPOINT /go/bin/appsrv

EXPOSE 8080
