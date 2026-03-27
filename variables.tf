variable "region" {
    description = "The AWS region to deploy resources in"
    type        = string
  
}

variable "cidr_block" {
    description = "The CIDR block for the VPC"
    type        = string    
  
}

variable "subnet_cidr" {
    description = "The CIDR block for the subnet"
    type        = string    
  
}

variable "vpc_name" {
    description = "The name of the VPC"
    type        = string    
  
}

variable "subnet_name" {
    description = "The name of the subnet"
    type        = string    
}



variable "ami_id" {
    description = "The AMI ID to use for the EC2 instance"
    type = string
  
}

variable "ec2_name" {
    description = "The name tag for the EC2 instance"
    type = string
  
}

variable "instance_type" {
    description = "The instance type for the EC2 instance"
    type = string
}

