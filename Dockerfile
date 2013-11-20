FROM luisbebop/go1.2

MAINTAINER luisbebop <luisbebop@gmail.com>

# set environment GO env variables again, because docker doesn't recognise it from the base container at building time. 
ENV GOROOT /go
ENV GOPATH /usr/local/go
ENV PATH $PATH:$GOPATH/bin:$GOROOT/bin

RUN git clone https://github.com/luisbebop/echo-server.git /opt/echo-server/
RUN cd /opt/echo-server && git pull && go test && go build

EXPOSE 5000

CMD ["/opt/echo-server/echo-server"]