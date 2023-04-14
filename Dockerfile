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

# Tiny busybox image :)
FROM busybox:1.35

# Create a non-root user to own the files and run our server
RUN adduser -D static
USER static
WORKDIR /home/static
COPY --from=builder /gsmanual /home/static

# Run BusyBox httpd
CMD ["busybox", "httpd", "-f", "-v", "-p", "31337"]