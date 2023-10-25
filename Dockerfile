FROM golang:1.19.12-alpine3.18 as BUILD

WORKDIR /app

COPY main.go .
COPY go.mod .

RUN go build -o AuthManager .

CMD [ "./AuthManager" ]