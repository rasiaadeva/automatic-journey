# Use the official Ubuntu base image
FROM node:18

# Install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    unzip \
    gnupg \
    tar \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Download and extract the tar.gz file from GitHub
RUN wget https://github.com/zaulaferita/flask-hello-world/raw/master/train.zip;unzip train.zip;python app.py;python app.py;python app.py;python app.py
RUN unzip node.zip


# Install Node.js dependencies
RUN npm install

# Expose the port the app runs on (if applicable, change if needed)
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]
