FROM node:lts

ENV APP_NAME="gametest"

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
#RUN npm install
RUN yarn
RUN expo install expo-font @expo-google-fonts/inter 
RUN expo install @expo-google-fonts/rajdhani
RUN yarn add expo-app-loading
RUN expo install expo-linear-gradient
RUN yarn add react-native-iphone-x-helper
RUN yarn add @react-navigation/native
RUN expo install react-native-gesture-handler react-native-reanimated react-native-screens react-native-safe-area-context @react-native-community/masked-view
RUN yarn add @react-navigation/stack

ENTRYPOINT ["expo"]
CMD ["start"]