FROM maximhq/bifrost:latest

# Copy the config.json database connection settings into the container
COPY config.json ./config.json

EXPOSE 10000

# Expose env variables
ENV BIFROST_HOST=0.0.0.0

# Start Bifrost binding to 0.0.0.0 and port 10000 to match Render expectations
CMD ["./bifrost", "-app-dir", ".", "-host", "0.0.0.0", "-port", "10000"]
