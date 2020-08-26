FROM golang:1.14.6-alpine3.12 AS build

WORKDIR $GOPATH/go/src/app

COPY /src/codeedu-go-ci .

RUN CGO_ENABLED=0 go build -o /app soma.go

FROM scratch

COPY --from=build /app /app

CMD ["/app"]