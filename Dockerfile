FROM alpine:3.17.3

RUN apk add --no-cache bash

COPY pluto.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/pluto.sh

RUN mkdir /logi

WORKDIR /logi

CMD ["/usr/local/bin/pluto.sh"]