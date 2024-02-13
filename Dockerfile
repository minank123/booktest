
FROM node:16-alpine
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY . ./
RUN npm install --legacy-peer-deps 
EXPOSE 3000
CMD ["npm", "start"]
