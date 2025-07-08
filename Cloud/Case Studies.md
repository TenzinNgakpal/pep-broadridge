### 8th July 2025 | 12:00 PM to 2:00 PM

# Case Studies

### AWS Pricing Calculator


1. Case 1: Hosting a Static Website with Amazon S3 and Route 53.

    - Scenario: A team is developing a serverless image processing application that resizes images uploaded by users.

    - Technical Specifications:
        * AWS Lambda:
            + Memory: 512 MB
            + Average Duration: 800 ms
            + Monthly Invocations: 1 Million
        * API Gateway: 500,000 API calls/month
        * S3: Store 10 GB Images, 100 GB monthly data transfer
        * DynamoDB: Store image metadata(~1 GB)
    
    - Tasks:
        * Add each service to AWS Pricing Calculator with given specifications.
        * Estimate total cost and identify the most expensive service.
        * Suggest ways to optimize costs (e.g., reducin Lambda memory or using caching).


2. Case 2: Deploying a Scalable Web Application using EC2 and Load Balancers.

    - Scenario: A staartup plans to deploy a dynamic web application that requires compute power, storage, and auto-scaling based on traffic.

    - Technical Specifications:
        * Compute: 2 EC2 t3.medium instances (2 vCPU, 4 GB RAM) in us-east-1
        * OS: Amazong Linux 2
        * Storage: 50 GB General Purpose (gp3) EBS per instance
        * Load Balancer: Application Load Balancer (ALB) with 1 million requests per month.
        * Data Transfer Out: 100 GB/month
        * Uptime: 24/7 Operation
    
    - Tasks:
        * Add each service to AWS Pricing Calculator with given specifications.
        * Estimate total cost and identify the most expensive service.
        * Suggest ways to optimize costs (e.g., reducin Lambda memory or using caching).