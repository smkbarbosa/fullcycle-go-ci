FROM golang:1.14-alpine as builder

WORKDIR /go/src/codeedu-go-ci
COPY ./src/codeedu-go-ci/soma.go .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags '-w -extldflags "-static"' -o soma
RUN ls

FROM scratch
COPY --from=builder  /go/src/codeedu-go-ci .

CMD [ "./soma" ]