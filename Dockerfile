FROM alpine:latest
RUN apk upgrade 
RUN apk add nodejs npm
WORKDIR /root/node-app/
COPY . .
RUN npm install
EXPOSE 5000 
CMD ["npm", "run", "start"]
