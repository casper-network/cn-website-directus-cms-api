FROM node:14-alpine3.15

COPY ./uploads /directus/uploads
COPY ./extensions /directus/extensions
COPY ./package.json /directus/package.json
COPY ./package-lock.json /directus/package-lock.json
COPY ./ecosystem.config.js /directus/ecosystem.config.js
COPY ./.env /directus/.env

WORKDIR /directus
RUN npm install pm2 -g
RUN npm install

CMD ["cd", "/directus"]
CMD ["pm2-runtime", "ecosystem.config.js"]

EXPOSE 8055
