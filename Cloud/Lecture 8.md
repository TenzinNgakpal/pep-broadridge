### 19th June 2025 | 9:00 AM to 11:00 AM

# Lecture 3

### Containers


- Docker Benefits:
    1. Consistent and isolated environments
    2. Fast deployment
    3. Repeatability and automation
    4. Supports Agile and CI/CD Devops practices
    5. Versioning for easy testing, rollbacks and redeployments
    6. Collaboration, modularity and scaling
    7. Easy portability and flexibility.


- Challenging Use Cases:

    Docker is not a good fit for applications:
    1. Requiring high performance or security
    2. Based on Monolith architecture.
    3. Using rich GUI features
    4. Performing standard desktop or limited functions.


- Docker container creation Process:

    Steps to create and run containers:
    1. Create a Dockerfile
    2. Use the Dockerfile to create a container image.
    3. Use the container image to create a running container.


- Image Layers:
    * Images are built using instructions in a Dockerfile.
    * Each Docker instruction creates a new read-only layer.
    * A writeable layer is added when an image is run in a container.

- Dockerfile Commands:
1. FROM
2. RUN
3. ENV
4. ADD or COPY
5. CMD

- Container Orchestration:
    * Container orchestration is a process that automates the container lifecycle of containerized applications.
    * Container Lifecycle:
        1. Deployment
        2. Management
        3. Scaling
        4. Networking
        5. Availabilty