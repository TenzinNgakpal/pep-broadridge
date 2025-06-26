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
    
    * **How Does Terraform Work?**
        + Terraform creates and manages resources on cloud platforms and other services through their **Application Programming Interfaes (APIs)**.
        + Providers enable Terraform to work with virtually any platform or service with an accessible API.
        + Provider is a plugin that:
            - Enables Terraform to interact with the target platform
            - Understands API intractions of tht platform
            - Exposes resources available in it
        + The core Terraform workflow consists of three stages:
            * Init: Terraform initializes the working directory, downloading the necessary provider plugins and setting up the backend for state management. It must be run before any other commands to prepare your configuration for use.
            * Validate: Terraform checks the syntax and internal consistency of the configuration files, ensuring that they are structurally and logically correct before planning or applying changes.
            1. Write: The user defines resources, which may be across multiple cloud providers and services.
            2. Plan: Terraform creates an execution plan describing the infrastructure it will create, update, or destroy based on the existing infrastructure and your configuration.
            3. Apply: On approval, Terraform performs the proposed operations in the correct order, respecting any resource dependencies.
            * Destroy: Terraform removes all infrastructure defined in the configuration. It’s the reverse of *Apply* and is used when tearing down environments or cleaning up unused resources.

    * **Terraform Language**
        + Declarative Language
        + It serves the purpose of declaring a resource
        + Resources represent infrastructure objects
        
    * **Terraform Language Syntax**    
        + Configuration Syntax:
            - Describes the native grammar of the Terraform language.
            - Based on HashiCorp's proprietary HCL (HashiCorp Configuration Language).
            - Easy for humans to read and write.
        + JSON Configuration Syntax:
            - Describes how to represent Terraform language constructs in JSON Format
            - Harder for humans to read and edit
            - Easier to generte and parse programmatically
        + Terraform Laguage Key Constructs:
            - Built around two key syntax constructs: *Arguments* and *Blocks*.
            - **Arguments:**
                * An argument assigns a value to a particular name.
                * The identifier before the equals sign is the *argument name*.
                * The expression after the equals sign is the *argument's value*.
                * Arguments are typically used inside blocks to define resource-specific settings.
            - **Blocks:**
                * A block is a container for other content.
                * A block starts with a keyword that represents its type (What the block defines).
                * Block type defines how many labels must follow the type keyword.
                    + Some block types require one label (e.g., provider "aws").
                    + Others require two labels (e.g., resource "aws_instance" "web" — where aws_instance is the type and web is the name).
                    + Some blocks support nested blocks (e.g., provisioner or lifecycle inside a resource block).