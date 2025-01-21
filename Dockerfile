FROM mongo:latest
# Set environment variables for MongoDB credentials
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=adminpassword

# Copy initialization scripts into the container
#COPY /root/pkr/Dockerfile/init.js /docker-entrypoint-initdb.d/

MAINTAINER PAVAN DEVOPS

LABEL env=POC

# Expose the default MongoDB port
EXPOSE 27017
