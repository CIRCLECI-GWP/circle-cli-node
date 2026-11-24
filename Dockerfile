FROM node:26

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Install production dependencies only
RUN npm ci --omit=dev

# Bundle app source
COPY . .

EXPOSE 5000
CMD [ "npm", "start" ]
