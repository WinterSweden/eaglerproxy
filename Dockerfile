# Use Node.js LTS
FROM node:20-bullseye

# Set working directory
WORKDIR /usr/src/app

# Copy package.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all other files
COPY . .

# Expose the WebSocket port
EXPOSE 8080

# Start the compiled proxy
CMD ["node", "dist/index.js"]

