### 27th June 2025 | 9:00 AM to 11:00 AM

# Lecture 9

### Terraform


- Terraform Language Syntax (Continued)

    * Terraform Language Data Types:
        1. Data types of argument values:
            + Primitive
            + Lists
            + Maps
        2. The Primitive data types are:
            + String -> encloses in double quotes
            + Number -> By default, members are base 10
            + Boolean -> true, false (NOTE: encloses in double quotes for TF <0.12 = "true", "false">)


- Terraform Components:

    * Terraform Components:
        1. Providers
        2. Resources
        3. Data Sources
        4. Modules
        5. Variables
        6. Outputs
        7. Local Variables
        8. State File

    * Providers:
        + Example: AWS.
        + Provides services and platforms.

    * Resource Blocks:
        + Resource is a component of infrasturcture.
        + Example: A virtual machine, a database, a network component, etc.
        + A *resource* bock creates a resource of the given *type* and *name*.
            ```hcl
            resource"aws_instance""web" {
                ami = "ami-12345"
                instance_type = "t2.micro"
            }
            ```
        + Below meta-parameters are available for all resources:
            - count(int): deno
            - depends_on(list of strings)
            - providers(string)
            - lifecycle(configuration blocks)
    
    * Data Source Blocks:
        + Allow a Terraform configuration to fetch.
            - Data defined outside of Terraform, or
            - Data defined by another Terraform config
        + Present read-only views into pre-existing data.
            ```hcl
            data"aws_ami""web" {
                filter {
                    name = "tag.OS"
                    values = "rhel"
                }
            }
            ```
        + Attributes exported by data source blocks can be 

    * Modules:
        + A module is a container for multuple resources that are used together.
        + Every Terraform configuration has at least one module:
            - Root Module
            - It consists of the resources defined in the .tf files in the main working directory.
        + A module can call other modules.
            - Called module is referred to as child module.
            - Module from which child module is called, is referred to as calling module.
            - Child module's resources become part of configuration of calling module.
        + A module can be called multiple times.
            - Either within the same configuration.
            - Each instance of a module can be configured with different input values.
        + Modules improve reusability, organization, and maintainability of Terraform code.
        + There are three types of modules:
            - **Root Module** – The primary module loaded from the current working directory.
            - **Local Modules** – Modules stored locally within the same project directory.
            - **Remote Modules** – Modules sourced from external sources like Terraform Registry, GitHub, or a file system path.
        + Modules use the `module` block to call child modules:
            ```hcl
            module "web_ec2" {
            source = "./modules/aws_ec2"

            ami = "ami-123456789"
            }
            ```
        + Input and Output:
            - Modules accept **input variables** to customize behavior.
            - Modules can expose **output values** to return information to the calling module.

    * Input Variables:
        + Input variables serve as parameters for a Terraform module.
        + Variables are used to parameterize Terraform configurations.
        + They allow values to be passed into modules or configurations dynamically.
        + Declared using the `variable` block:
            ```hcl
            variable "instance_type" {
            description = "Type of EC2 instance"
            type        = string
            default     = "t2.micro"
            }
            ```
        + Types of variables:
            - **string** – a single string value
            - **number** – any numeric value
            - **bool** – true or false
            - **list(type)** – a list of values of a specified type
            - **map(type)** – a map of key-value pairs of specified type
            - **object({...})**, **tuple([...])** – for complex structured data
        + Values can be passed through:
            - `terraform.tfvars` or `*.auto.tfvars` files
            - Command-line flags (`-var`)
            - Environment variables (`TF_VAR_name`)
            - Directly in the CLI with `-var-file` or interactive prompts

    * Outputs:
        + Outputs allow Terraform to expose information after a configuration is applied.
        + Typically used to show results like public IPs, resource IDs, etc.
        + Declared using the `output` block:
            ```hcl
            output "instance_ip" {
            value = aws_instance.example.public_ip
            description = "Public IP address of the EC2 instance"
            }
            ```
        + Output values can:
            - Be printed to the console
            - Be used as input to other modules (when using remote state)
            - Be retrieved via `terraform output` CLI command

    * Local Variables:
        + Local values simplify expressions and avoid repeating complex logic.
        + Defined using the `locals` block:
            ```hcl
            locals {
            name_tag = "${var.environment}-web"
            }
            ```
        + Local variables are immutable and can’t be changed after definition.
        + Typically used for:
            - Computed values
            - Cleaner code
            - Reusing common expressions

    * State File:
        + The state file tracks the current state of the infrastructure managed by Terraform.
        + By default, stored as `terraform.tfstate` in the working directory.
        + Contains:
            - Resource metadata
            - Dependency information
            - Output values
        + Important for:
            - Knowing what Terraform is managing
            - Planning accurate changes
        + Sensitive data (like passwords) may be stored in plaintext—consider securing the state.
        + Supports:
            - **Remote backends** (e.g., S3, Terraform Cloud) for collaboration and locking
            - **State locking** to prevent simultaneous operations
        + Common commands:
            - `terraform state list` – view managed resources
            - `terraform state show` – inspect resource state
            - `terraform state rm` – remove a resource from the state

