FROM luisbebop/go1.2

MAINTAINER luisbebop <luisbebop@gmail.com>

RUN git clone https://github.com/luisbebop/echo-server.git /opt/echo-server/
RUN cd /opt/echo-server && git pull && go test && go build

EXPOSE 5000

CMD ["/opt/echo-server/echo-server"]