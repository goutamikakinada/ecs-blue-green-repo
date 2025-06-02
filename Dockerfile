# Use Node.js 18 image from AWS Public ECR instead of Docker Hub
FROM public.ecr.aws/docker/library/node:18

# Set working directory (example)
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Command to run your app
CMD ["node", "index.js"]
