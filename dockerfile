FROM jitesoft/node-yarn:lts

RUN apk add --no-cache \
  bash \
  git \
  jq

RUN cd /usr/local \
    && git clone --depth=1 https://github.com/aspen-discovery/aspen-discovery.git \
    && rm -rf ./aspen-discovery/.git

RUN cd /usr/local/aspen-discovery/code/aspen_app \
    && rm .yarnrc.yml \
    && yarn install

RUN cd /usr/local/aspen-discovery \
    && find . -mindepth 1 -maxdepth 1 -type d ! -name 'code' -exec rm -rf {} +

RUN cd /usr/local/aspen-discovery/code \
    && find . -mindepth 1 -maxdepth 1 -type d ! -name 'aspen_app' -exec rm -rf {} +