# Use Node.js 18 image from AWS Public ECR instead of Docker Hub
FROM public.ecr.aws/docker/library/node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
