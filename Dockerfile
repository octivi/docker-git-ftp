ARG ALPINE_VERSION

FROM alpine:${ALPINE_VERSION}

ARG GITFTP_VERSION

CMD ["bash"]

# hadolint ignore=DL3018
RUN set -eux; \
    apk add --no-cache \
      bash \
      curl \
      git;

RUN set -eux; \
    curl -fsSL -o /usr/local/bin/git-ftp "https://raw.githubusercontent.com/git-ftp/git-ftp/${GITFTP_VERSION}/git-ftp"; \
    chmod +x /usr/local/bin/git-ftp
