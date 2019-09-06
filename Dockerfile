FROM alpine:3.10
LABEL maintainer "Miller Wilt <miller.wilt@jhuapl.edu>"

RUN apk add --no-cache su-exec tini

ENTRYPOINT [ "/sbin/tini", "--" ]
CMD [ "/bin/sh" ]
