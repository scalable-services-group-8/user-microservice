FROM node:18-alpine

WORKDIR /usermicroservice

COPY . .

WORKDIR /usermicroservice/src

# install dependencies
RUN yarn install --production 

#command
CMD ["node", "index.js"]

#  port from container
EXPOSE 3001