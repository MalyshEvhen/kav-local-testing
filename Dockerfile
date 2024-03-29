FROM node:18-alpine3.17 as build

ARG SERVER_URL

WORKDIR /app
COPY . /app

RUN npm install
RUN VITE_SERVER_URL=http://127.0.0.1:8081/api npm run build

FROM nginx
EXPOSE 80
COPY ./docker/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist /usr/share/nginx/html