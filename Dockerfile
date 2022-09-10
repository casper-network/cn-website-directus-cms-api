FROM node:14-alpine3.15

COPY ./extensions /directus/extensions
COPY ./package.json /directus/package.json
COPY ./package-lock.json /directus/package-lock.json
COPY ./ecosystem.config.js /directus/ecosystem.config.js

# this should not be neccesary if we can move everything to a s3 bucket
# COPY ./uploads /directus/uploads

# as long as all env variables are available, this should not be neccessary
# COPY ./.env /directus/.env

WORKDIR /directus
RUN npm install pm2 -g
RUN npm install

CMD ["cd", "/directus"]
CMD ["pm2-runtime", "ecosystem.config.js"]

EXPOSE $PORT
