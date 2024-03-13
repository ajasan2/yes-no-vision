FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y build-essential cmake git

WORKDIR /app

COPY . .

# Define the default command to run your application
CMD ["bash"]
