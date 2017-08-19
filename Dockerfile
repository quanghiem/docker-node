FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
ADD package.json .
RUN npm install

# Bundle app source
ADD . .

# Run postinstall script
RUN npm run postinstall

# Start app
ENTRYPOINT ["npm"]
CMD ["start"]