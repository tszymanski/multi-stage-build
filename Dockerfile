FROM golang:latest
LABEL maintainer="tomasz.szymanski@greenit.com.pl"
WORKDIR /code/
COPY code/app.go .

# building our app
RUN go build -o app .

# use our new binary app in CMD
CMD ["./app"]
