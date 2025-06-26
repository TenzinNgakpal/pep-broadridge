# Specifying the service provider and chosen region
provider "aws" {
  region = "ap-south-1"
}

# Defining the EC2 instance
resource "aws_instance" "web" {
  ami           = "ami-0fc5d935ebf8bc3bc"  # Ubuntu Image
  instance_type = "t2.micro"
}
