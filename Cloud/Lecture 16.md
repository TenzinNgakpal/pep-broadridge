### 26th June 2025 | 12:00 PM to 2:00 PM

# Lecture 16

### Kubernetes


- **What is Kubernetes?**
    
    * "Kubernetes, also known as K8s, is an open-source system for automating deployment, scaling, and management of containerized applications."

    * Source: Kubernetes.io


- **What Kubernetes is not:**

    * Is not a traditional, all-inclusive platform as a service (PaaS).

    * Is not rigid or opinionated but a flexible model that supports a diverse variety of workloads and containerized applications.
    
    * Does not provide continuous integration/continuous delivery (CI/CD) pipelines to deploy source code to build applications.
    
    * Does not prescribe logging, monitoring, or alerting solutions.
    
    * DOes not provide built-in middleware, databases, or other services.


- **Kubernetes Concepts:**

    * Pods and Workloads: Pods are the smallest deployable compute object in Kubernetes and the higher-level abstractions to run workloads.
    
    * Services: A service exposes application running on a set of Pods.
    
    * Storage: Kubernetes supports both persistent and temporary storage for Pods.
    
    * Configuration: Resources that Kubernetes provides for configuring Pods.
    
    * Security: Security for cloud-native workloads enforces security for Pods and API access.
    
    * Policies: Create policies for groups of resources helps ensure that Pods match to the Nodes so that the kubelet can find them and run the pod.
    
    * Schedule, Eviction: Runs and proactively terminates one or more Pods on resource-starved Nodes.
    
    * Preemption: Terminates lower priority Pods so that higher priority Pods can run on Nodes.
    
    * Administration: Management details necessary to administer as a manager.


- **Capabilities:**

    * Automated rollouts and rollbacks
        + Progressively rolls out changes to application or configuration.
        + Monitors application health and ensures instances are running.
        + Rolls back changes.

    * Storage orchestration
        + Automatically mounts your chosen storage system whether from local storage, network storage, or public cloud.
    
    * Horizontal scaling
        + Scales loads automatically based on metrics or via commands.

