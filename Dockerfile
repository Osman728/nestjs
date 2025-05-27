# Use Node as the base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Generate Prisma client
RUN npx prisma generate

# Expose the port NestJS runs on
EXPOSE 3000

# Start the app
CMD ["npm", "run", "start:dev"]