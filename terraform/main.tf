provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "name" {
    ami = "ami-0fc5d935ebf8bc3bc"
    instance_type = "t2.micro"
    tags = {
      Name = "ansible-controller"
    }
}
resource "aws_instance" "name" {
    ami = "ami-0fc5d935ebf8bc3bc"
    instance_type = "t2.micro"
    tags = {
      Name = "ansible-host1"
    }
}
resource "aws_instance" "name" {
    ami = "ami-0fc5d935ebf8bc3bc"
    instance_type = "t2.micro"
    tags = {
      Name = "ansible-host2"
    }
}
resource "aws_security_group" "ssh_access" {
  name        = "ssh-access"
  description = "Allow SSH access"

  # Define ingress rules for SSH (port 22)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Adjust this CIDR block to restrict SSH access
    # For better security, limit the CIDR block to your specific IP or range
  }

  # Optionally define egress rules if needed
  # For example, allowing all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"   #-1 refers to allowing all ports or protocols for the specified rule.
    cidr_blocks = ["0.0.0.0/0"]
  }
}