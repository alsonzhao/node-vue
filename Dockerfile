FROM node:latest
WORKDIR /app
COPY . .
WORKDIR /app/film
RUN npm install
RUN npm run start

WORKDIR /app/film_admin
RUN npm install
RUN npm run start

WORKDIR /app/film_api
RUN npm install

EXPOSE 8080
EXPOSE 8081
EXPOSE 3000
ENTRYPOINT ["npm", "run"]
CMD ["start"]

