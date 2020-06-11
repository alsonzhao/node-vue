FROM node:latest
WORKDIR /app
COPY film/package.json .
RUN npm install
COPY . .
RUN npm run build
