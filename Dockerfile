FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Expose app port
EXPOSE 3000

# Start app
CMD [ "npm", "start" ]
