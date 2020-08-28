FROM node:12.14.0-alpine3.11

RUN apk add --no-cache bash git
RUN npm config set cache /home/node/app/.npm-cache --global
RUN npm i -g @nestjs/cli@7.4.1

COPY app /home/node/app
RUN chown node:node -R /home/node/app

USER node
WORKDIR /home/node/app
RUN npm install
EXPOSE 3000 

ENTRYPOINT ["npm", "run", "start"]
