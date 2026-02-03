FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

# Build TypeScript → dist/
RUN npm run build

# Render provides PORT automatically
ENV PORT=8080
EXPOSE 8080

# Start the compiled JS
CMD ["node", "dist/index.js"]
