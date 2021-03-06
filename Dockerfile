FROM golang
WORKDIR /src
COPY hello.go .
RUN go build hello.go
FROM ubuntu
COPY --from=0 /src/hello .
CMD ["./hello"]