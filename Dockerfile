FROM rust:1.68-slim

# Install additional dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    ca-certificates

# Install mdBook
RUN cargo install mdbook --version "0.4.28"

# Create a working directory
WORKDIR /app

# Copy the project's content to the working directory
COPY . /app

# Build the mdBook project
RUN mdbook build

# Install a simple HTTP server to serve the book
RUN cargo install miniserve --version "0.23.0"

# Expose the server port
EXPOSE 31337

# Serve the built book with miniserve
CMD ["miniserve", "--index", "index.html", "-p", "31337", "./book"]
