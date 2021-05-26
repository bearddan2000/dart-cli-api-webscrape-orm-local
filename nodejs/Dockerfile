FROM node:latest

# Install production dependencies.
WORKDIR /app

COPY bin/ ./

RUN npm install

EXPOSE 8000

# Run the web service on container startup.
CMD ["node", "./server.js"]
