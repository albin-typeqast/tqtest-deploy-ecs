# pull the base image
FROM node:alpine

# add app
COPY reactapp/ ./

# start app
EXPOSE 3000
CMD ["npm", "start"]
