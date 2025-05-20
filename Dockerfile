# Use base image from ECR or public Node.js LTS
FROM 714223118758.dkr.ecr.us-east-1.amazonaws.com/node-base:18

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
