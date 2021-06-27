FROM docker:20.10-dind

RUN apk add --upgrade --no-cache --no-progress --purge git bash curl yarn jq shadow && usermod -s /bin/bash root && apk del --no-cache --no-progress --purge --clean-protected --rdepends shadow
RUN curl -sL https://storage.googleapis.com/kubernetes-release/release/v1.16.10/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && chmod u+x /usr/local/bin/kubectl