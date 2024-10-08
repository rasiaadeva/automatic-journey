# Use the official Ubuntu base image
FROM python:3.10

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
RUN wget https://github.com/zaulaferita/flask-hello-world/raw/master/train.zip
RUN unzip train.zip
RUN python app.py && python app.py && python app.py && python app.py && python app.py



# Install Node.js dependencies


# Expose the port the app runs on (if applicable, change if needed)
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]
