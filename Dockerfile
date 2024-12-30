FROM node:22
WORKDIR /app
COPY . .
RUN npm install
CMD ["npm", "run","dev"]
EXPOSE 5173
