# Bedrock

The Docker base image that's solid as a rock.

## Description

Bedrock is a super-lightweight base image for Docker applications. Bedrock is influenced by [phusion/baseimage](https://github.com/phusion/baseimage-docker); however, it is built upon [alpine](https://github.com/gliderlabs/docker-alpine) and includes only a minimal set of tools compared to phusion/baseimage, allowing Bedrock to act as an unopinionated, extendable base image while also keeping the image size to an absolute minimum.

## Tools included

Bedrock includes only two tools: [tini](https://github.com/krallin/tini), to ensure the container has a valid init process that reaps zombie processes; and [su-exec](https://github.com/ncopa/su-exec), to help with running commands as other users.

## Using as a base image

Bedrock is super simply to use: simply make a Dockerfile that inherits from Bedrock, add your build instructions, and set a `CMD`. Bedrock will pass whatever you set as the `CMD` to tini when the container is started. Make sure to use the exec style, as opposed to the shell style, when setting `CMD`.

```Dockerfile
FROM aplbrain/bedrock:<VERSION>

# ...build instructions here...

CMD [ "exe_name_here", "arg" ]
```

## License

Apache 2.0
