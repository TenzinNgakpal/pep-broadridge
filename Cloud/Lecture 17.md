### 9th July 2025 | 12:00 PM to 2:00 PM

# Lecture 17

### Kubernetes


- **Key Terms Review**

    1. **What is an object, anyway?**
        + **Object:** A bundle of software data that has an identity, a state and a behavior.
            * Variabes, data structures and specific functions.
        + **Entity:** A person, place, or thing with an identity and associated data.

    2. **What are Kubernetes Objects?**
        + Kubernetes objects are persistent entities.
            1. Pods
            2. Namespaces
            3. ReplicaSets
            4. Deployments
        + Kubernetes objects consist of two main fields.
            1. Object Spec:
                * Provided by user.
                * Defines desired state.
            2. Status:
                * Provided by Kubernetes.
                * Defines current state.

    3. **Labels and Selectors:**
        + Labels are key/value pairs attached to objects.