
FROM node:carbon-alpine
ENV NPM_CONFIG_LOGLEVEL info

# Create directory
RUN mkdir /joe
WORKDIR /joe

# COPY file
COPY ./package.json /joe
COPY ./dist /joe/dist

# Install app dependencies
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install -g pm2
RUN cnpm install --production

# Change localtime
RUN apk update && apk add bash tzdata \
    && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

CMD  npm run pro
