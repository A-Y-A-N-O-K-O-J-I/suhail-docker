# Use Node.js LTS as base image
FROM quay.io/ayanokojix2306/kojixsophia:latest

# Clone the repository
RUN git clone https://huggingface.co/spaces/frommmmmm/dreamers /home/suhail

# Set ownership for the 'node' user
RUN chown -R node:node /home/suhail

# Switch to the 'node' user
USER node

# Set the working directory
WORKDIR /home/suhail



# Install dependencies
RUN npm install

# Expose the port
EXPOSE 8000

# Start both server.js and the main application
CMD ["sh", "-c", "npm start"]
