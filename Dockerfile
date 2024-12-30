# Use a Node.js image
FROM node:22

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Make vite executable (if necessary)
RUN chmod +x ./node_modules/.bin/vite

# Expose the development server port
EXPOSE 5173

# Start the development server
CMD ["npm", "run", "dev"]
