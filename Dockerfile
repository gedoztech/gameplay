FROM node:lts

ENV APP_NAME="gameplay"

ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

ARG PORT=19006
ENV PORT $PORT
EXPOSE $PORT 19001 19002

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH /home/node/.npm-global/bin:$PATH
RUN npm i --unsafe-perm -g npm@latest yarn@latest
RUN npm i --unsafe-perm -g npm@latest expo-cli@latest

RUN mkdir /opt/$APP_NAME && chown node:node /opt/$APP_NAME
WORKDIR /opt/$APP_NAME
ENV PATH /opt/$APP_NAME/.bin:$PATH
USER node
COPY --chown=node:node ./package.json ./
RUN npm install

ENTRYPOINT ["expo"]
CMD ["start"]