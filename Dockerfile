FROM golang:1.18 AS build
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN go mod download
RUN go build .
CMD ["/app/realtime-chat-go-react"]
