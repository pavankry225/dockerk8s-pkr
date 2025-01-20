# dockerk8s-pkr
What is Docker?

Docker is an open-source platform that automates the deployment of applications inside lightweight, portable containers.

A container includes everything needed to run an application—code, runtime, system tools, libraries, and dependencies—ensuring consistency across environments.

Key Concepts:
Containers: These are like mini-virtual machines, but they share the same operating system, which makes them more efficient.
Docker Engine: This is the software that runs on your computer or server and manages the containers.
Portability: Since containers include everything the app needs, they can run on any machine with Docker installed, whether it’s your laptop or a server in the cloud.


Why do we need docker?

Ensures "build once, run anywhere" for consistent behavior across development, testing, and production.

Provides an isolated environment to eliminate dependency issues and run applications seamlessly on any system.

Accelerates CI/CD pipelines, simplifying the building, testing, and deployment process.

Docker containers use fewer resources than traditional virtual machines, making them faster and easier to scale.


Docker Eco system:

1) Docker Engine :
 The Docker Engine is the core component responsible for creating, running, and managing containers.
    i) Docker Daemon (dockerd): A background process that manages containers on a Docker host.
    ii) Docker Client (docker): A command-line interface (CLI) or GUI that users interact with to send requests to the Docker Daemon (via REST APIs).
    iii) Docker REST API: Provides a programmatic interface to interact with the Docker Daemon.


2) Docker Images:
The Docker Images are read-only templates used to create Docker containers. Images contain everything required to run an application, including the operating    system,   application code, libraries, and dependencies.

  i)   Base Images: Minimal images containing just the essential components (e.g., alpine, ubuntu).
  ii)  Custom Images: Images built from a Dockerfile that contain your application and all dependencies.
  iii) Docker Hub: A cloud registry service where you can store, share, and pull official and custom images.

3. Docker Containers :
Docker Containers are instances of Docker images. A container is a lightweight, portable, and executable package that includes everything needed to run an application (code, runtime, libraries, etc.).

  -> Containers are isolated from the host system and other containers.
  -> Containers are temporary and can be started, stopped, moved, and deleted.

4. Docker Compose :
Docker Compose is a tool for defining and running multi-container Docker applications. Using a docker-compose.yml file, you can configure multiple services (e.g., database, backend, frontend) that make up an application.
 -> Example Use Case: Running a web server, database, and caching service together as a single application.


5. Docker Swarm :
Docker Swarm is Docker's native clustering and orchestration tool. It allows you to manage a cluster of Docker nodes (machines) as a single virtual Docker host.

  i)   Nodes: A node is an individual Docker engine in the Swarm cluster.
  ii)  Services: Docker Swarm manages services, which are tasks that define the container workload.
  iii) Scaling: Swarm enables automatic scaling and load balancing across nodes. 
  -->  warm simplifies high-availability and fault-tolerant container orchestration.


6. Docker Registry :
A Docker Registry is a system for storing and distributing Docker images. It can be public or private.

  i)  Docker Hub: A popular public registry for official and community-contributed Docker images.
  ii) Docker Registry (Self-hosted): You can also set up your own registry to store private images.


7. Docker Networking :
Docker Networking allows containers to communicate with each other and with the external world. Docker provides several networking modes:

  i)  Bridge Network: Default network mode for containers, where containers can communicate with each other but are isolated from the host and external network.
  ii) Host Network: The container shares the host’s network stack, which means no isolation.
  iii)Overlay Network: Allows containers on different Docker hosts to communicate with each other, used in Docker Swarm and Kubernetes.
  iv) Macvlan Network: Allows containers to appear as physical devices on the network.

8.Docker Volumes :
Docker Volumes are used for persistent data storage that can persist beyond the life of a container. Volumes are independent of containers and can be shared across containers.

  i)  Named Volumes: Volumes created and managed by Docker.
  ii) Bind Mounts: Bind mount a directory from the host system into the container.
  iii)Temporary Storage: Data that exists only during the container’s lifetime.

9. Docker Desktop :
Docker Desktop is a graphical user interface (GUI) application that helps developers to build, test, and run Docker containers on their local machine. It is available for Windows and macOS and includes Docker Engine, Docker CLI, Docker Compose, and a graphical UI to manage containers.

10. Docker CLI and Dockerfile :
  i)Docker CLI: The Docker Command-Line Interface (docker) allows users to manage containers and images (e.g., docker build, docker run, docker ps).
  ii)Dockerfile: A text file with instructions to automate the creation of Docker images. It contains commands to install software, configure the container,   and copy necessary files.





Advantages:
Containers’ capacity to streamline the installation and handling of applications has increased their popularity in product engineering. Applications can be deployed using containers or virtual machines (VMs). Even though both are intended to offer a secure setting to manage software, they differ significantly.

Here are some advantages:

1. Portability: One of the main advantages of using containers is that they are highly portable. Containers are designed to be platform-independent and can be run on any system that supports the container runtime. This makes it easy to move applications between different environments, from development to test to production, without reconfiguring the setting.

2. Scalability: Containers are lightweight and fast, so they can be quickly spun up or down as needed. Depending on demand, scaling applications up or down is accessible. Container orchestration tools, such as Kubernetes, make it easy to manage large numbers of containers and automate the scaling process

3. Isolation: Containers provide high isolation between applications and their dependencies. Each container runs in its environment, with its file system, network stack, and processes. This makes running multiple applications on the same host easy without worrying about conflicts or dependencies.

4. Consistency: Containers provide a consistent runtime environment for applications, regardless of the underlying system. This means developers can be confident that their code will run the same way on any system supporting the container runtime.

5. Resource efficiency: Containers are lightweight and share the host system’s resources. This means multiple containers can run on the same host without consuming many resources. This makes running more applications on the same hardware possible, reducing costs.


Disadvantages:
1. Security: Containers share the same host kernel, which can pose a security risk. If a container is compromised, it can potentially affect other containers on the same host. However, container-specific security measures, such as container isolation and network segmentation, can mitigate this risk.

2. Complexity: Containers can be complex to set up and manage, especially in large-scale environments. Container orchestration tools, such as Kubernetes, can help to simplify the process, but they can also add complexity.

3. Storage: Containers are designed to be stateless, meaning they don’t store data or state. This can make managing persistent data, such as databases, difficult within a container environment. However, there are solutions, such as persistent volumes, that can be used to manage data stored in a docker container environment.

4. Networking: Containers can be challenging to network, especially across multiple hosts or environments. Container networking can be complex, and it requires careful planning and management to ensure that containers can communicate with each other and with external services.

5. Compatibility: Containers are designed to run on a specific container runtime, such as Docker or Kubernetes. This means that applications packaged in one container format may not be compatible with another container runtime. However, there are tools available, such as container conversion tools, that can be used to convert containers between different formats.



