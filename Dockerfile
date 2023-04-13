FROM rust:1.68-slim AS builder

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
RUN mkdir /gsmanual
RUN mv /app/book/* /gsmanual

# Minimal static server
FROM abhin4v/hastatic:latest

# Copy manual over to new server image
WORKDIR /opt/gsmanual
COPY --from=builder /gsmanual /opt/gsmanual

# Expose the server port
EXPOSE 31337
ENV PORT=31337
ENV IDX_FILE=index.html
CMD ["/usr/bin/hastatic"]
