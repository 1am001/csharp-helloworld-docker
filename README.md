# HelloWorld-CSharp

This is a simple C# project that outputs "Hello, World!" to the console. It is designed to demonstrate how to set up, build, and run a C# application using Docker.


## Project Overview

This project includes a basic C# application that prints "Hello, World!" to the console. The focus is on using Docker to containerize the application, making it easy to build and run in any environment.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- [Docker](https://www.docker.com/get-started)

## Installation

### Clone the Repository

Start by cloning the repository to your local machine:

```bash
git clone https://github.com/your-username/HelloWorld-CSharp.git
cd HelloWorld-CSharp
```

### Building and Running with Docker Build the Docker Image

To build the Docker image for the project, use the following command:

```bash
docker build -t helloworld-csharp .
```

This command will create a Docker image named helloworld-csharp based on the Dockerfile provided in the repository.
Run the Docker Container

After building the image, you can run the Docker container using:

```bash
docker run --rm helloworld-csharp
```

This command will execute the C# program inside a Docker container, and you should see the output:

```
Hello, World!
```
