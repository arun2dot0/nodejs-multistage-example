# Stage 1: Build
FROM node:14 AS builder

WORKDIR /app

# Copy package.json
COPY package.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Stage 2: Runtime
FROM node:14-alpine

WORKDIR /app

# Copy built assets from the builder stage
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./
COPY --from=builder /app/index.js .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
