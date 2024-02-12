# Use the official Golang image as the base image
FROM golang:1.19

# Set the working directory inside the container
WORKDIR /go/src/app

# Copy the source code into the container
COPY . .

# Build the Go application
RUN go build -o outyet main.go

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the application
CMD ["./outyet"]







