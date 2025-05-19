# Use Node.js LTS image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy app and install dependencies
COPY package*.json ./
RUN npm install
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD [ "npm", "start" ]
