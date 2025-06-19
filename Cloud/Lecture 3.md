### 19th June 2025 | 9:00 AM to 11:00 AM

# Lecture 3

### Containers

- **What is a container?**
    * Executable unit of software.
        - Encapsulates everything necessary to run.
        - Can be run anywhere.
    * OS-level virtualization.
        - Isolates processes.
        - Controls resources allocated to those processes.
    * Small, fast and portable.
        - Doesn't include a guest OS in every instance.

<br>

- **Dockers:**
    * Definition: A container is a standard unit of software that packages up code and all its dependencies as the application runs quickly and reliably from one computing environment to another.
    * A Docker container image is a lightweight, standalone and executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings.

<br>

- **Containerized Applications:**<br>
<img src="Figure 1.png">

- **Why Use Containers?**
    1. Isolation and Allocation
    2. Server Utilization
    3. Provisioning and Costs
    4. Performance
    5. Portability
    6. Resiliency
    7. Scalability

<br>

- **Container Characteristics:**
    * The container engine virtualizes the operating system.
    * A container is light-weight, fast, isolated, portable and secure.
    * Requires less memory space.

<br>

- **Containers Offer Easy Portability:**
    * Container consists of a *Containerization Engine*, *Any one Platform (Cloud, Desktop or On-Premise)*, *Any one OS (Windows, Linux, Mac OS, etc.)* and *Any Language (Flask, Python, Node, Java, etc.)*.

<br>

- **Benefits of Containers:**
    1. Lightweight
        - Doesn't include a guest OS.
        - Spin up quickly and scale horizontally.
    2. Portable and Platform Independent
    3. Support Modern Development and Architecture.
    4. Improve utilization

- **Container Vendors:**
    * **Docker:** Robust and most popular container platform today.
    * **Podman:** Daemon-less architecture providing more security than Docker Containers.
    * **LXC:** Preferred for data-intensive apps and ops.
    * **Vagrant:** Offers highest levels of isolation on the running physical machine.
    * **Postman:** Comes under Container Vendors.

- **Containers vs Virtual Machines:**
    * Virtualization: <br>
    <img src="Figure 2.png">

- What is Docker?
    * Software Platform for building and running container.
        - Containerization existed before Docker.
        - Launch of Docker in 2013 popularized containerization.
        - Provides straighforward way to build and run containers.
    * *Docker Image* and *Docker Container* are used interchageably for "Image" and "Container", respectively.
    * Open-source community.
        - Develops these technologies.
    * Using it, Programmers can:
        - Develop
        - Ship
        - Run
        - Containerize
    * Docker became popular due to:
        - Simple Architecture 
        - Scalability
        - Easy Portability
    * 