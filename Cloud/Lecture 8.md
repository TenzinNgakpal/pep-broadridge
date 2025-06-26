### 26th June 2025 | 9:00 AM to 11:00 AM

# Lecture 8

### Terraform

- **Contents**
    1. Introduction to Infrastructure as a Code (IaC)
    2. Features of Infrastructure as a Code
    3. Introduction to Terraform
    4. Terraform Highlights
    5. Terraform Providers

- **Infrastructure as a Code (IaC)**
    * Infrastructure Management - *Traditional Way*
        - Traditionally infrastructure was configured manually.
        - Scripts (Platform Specific)
        - Graphical User Interface
        - Manual configuration would pose below challenges:
            1. Scalability
            2. Consistency depends on accuracy of manual configuration
            3. Configuration Drift
            4. Difficult to document
            5. Difficult to keep multiple environments in lockstep
    
    * Infrastructure Management - *Through Code (IaC)*
        - Above challenges can be addressed through IaC.
        - IaC allows us to conffigure infrastructure rogrammatically through code.
        - **Definition:** IaC is a process of provisioning, managing, and configuring various resources in computer infrastructure through machine-readable configuration files, rather than through physical hardware configuration or interactive configuration tools.
        - **Features of IaC:**
            + Codify infreastructure provisioning
            + Version control infrastructure
            + Consistency
            + Speed
            + Facilitate cost savings
            + Single source of truth
            + Accountability
            + Team Collaboration (CI)
            + CI/CD Pipelines
            + Simplify, Standardize and Scale (SSS) with ease
            + Static Application Security Testing (SAST)

    * Infrastructure as a Code (IaC) - *Imperative vs Declarative*
        - Example:    
            + Imperative (*What to do*)
                * Forward 1 mile
                * Turn right
                * Forward 2 miles
                * Turn left
                * Forward 3 miles
                * Arrive at pizza restaurant
            + Declarative (*What is wanted*)
                * Go to the pizza restaurant
        - Imperative:
            1. Starting point matters
            2. Difficult to audit
            3. Difficult to detect drift
            4. No version control
            5. Not repeatable
            6. Requires complex logic
            7. Changes to destination requires significant modifications

        - Declarative:
            1. Starting point does not matter
            2. Engine determines how to get to destination
            3. Easy to validate and detect drift
            4. Can be version controlled.
            5. Repeatable in a pipeline
            6. Idempotent properly
            7. Changes to destination automatically handled.
    

- **Terraform** - *Introduction*
    
    * Terraform is an Infrastructure as a Code (IaC) tool that enables you to build, change, and version coud and on-premise resources safely and efficiently.
    
    * It is an IaC tool offered by HashiCorp.
    
    * Terraform is used to:
        + Build Infrastructure
        + Maintain Infrastructure
        + Version Infrastructure
    
    * Terraform improves the efficiency of infrastructure management.
    
    * Uses HashiCorp Configuration Language (HCL).
    
    * How Does Terraform Work?
        + Terraform creates and manages resources on cloud platforms and other services through their Application Programming Interfaes (APIs).
        + Providers enable Terraform to work with virtually any platform or service with an accessible API.
        + Provider is a plugin that:
            - Enables Terraform to interact with the target platform
            - Understands API intractions of tht platform
            - Exposes resources available in it

    * Terraform Language
        + Declarative Language
        + It serves the purpose of declaring a resource
        + Resources represent infrastructure objects
