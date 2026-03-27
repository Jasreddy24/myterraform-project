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

variable "subnet_id" {
    description = "The subnet ID where the EC2 instance will be launched"
    type = string
  
}

variable "aws_security_group_id" {
  description = "The security group ID to attach to EC2"
  type        = string
}