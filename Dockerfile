FROM golang:1.15
LABEL maintainer="tomasz.szymanski@greenit.com.pl"
LABEL example="multi-stage"
WORKDIR /code/
COPY code/app.go .

# building our app
RUN go build -o app .

# use our new binary app in CMD
CMD ["./app"]
