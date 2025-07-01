provider "aws" {
    region = "ap-south-1"
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "first" {
    ami = "ami-09e6f87a47903347c"
    instance = "t2.micro"

    tags = {
        Name = "Ubuntu"
        Environment = "Production"
    }
}