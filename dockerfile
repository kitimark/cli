FROM alpine:latest
WORKDIR /ghcli
ARG VERSION
RUN wget https://github.com/cli/cli/releases/download/v${VERSION}/gh_${VERSION}_linux_386.tar.gz -O ghcli.tar.gz
RUN tar --strip-components=1 -xf ghcli.tar.gz
ENV PATH "$PATH:/ghcli/bin"
ENTRYPOINT ["bin/gh"]
