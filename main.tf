provider "aws" {
    region = var.region
  
}

module "vpc" {
    source = "./modules/vpc"
    cidr_block = var.cidr_block
    vpc_name = var.vpc_name
    subnet_cidr = var.subnet_cidr
    subnet_name = var.subnet_name

}

module "ec2" {
    source = "./modules/ec2"
    ami_id = var.ami_id
    ec2_name = var.ec2_name
    instance_type = var.instance_type
    subnet_id = module.vpc.subnet_id
    aws_security_group_id = module.vpc.security_group_id
}


