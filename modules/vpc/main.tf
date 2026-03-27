resource "aws_vpc" "demo-vpc" {
    cidr_block = var.cidr_block
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
        Name = var.vpc_name
  
}
}

resource "aws_subnet" "demo-subnet" {
    vpc_id = aws_vpc.demo-vpc.id
    cidr_block = var.subnet_cidr
    map_public_ip_on_launch = true

    tags = {
        Name = var.subnet_name
    }
}

resource "aws_internet_gateway" "demo-ig" {
    vpc_id = aws_vpc.demo-vpc.id
    tags = {
        Name = "${var.vpc_name}-ig"
    }
  
}

resource "aws_route_table" "demo-rt" {
    vpc_id = aws_vpc.demo-vpc.id
    tags = {
        Name = "${var.vpc_name}-rt"
    }
  
}

resource "aws_route" "demo-route" {
    route_table_id = aws_route_table.demo-rt.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo-ig.id
}

resource "aws_route_table_association" "demo-rt-association" {
    subnet_id = aws_subnet.demo-subnet.id
    route_table_id = aws_route_table.demo-rt.id
  
}

resource "aws_security_group" "demo-sq" {
    name = "${var.vpc_name}-sg"
    description = "Security group for ${var.vpc_name}"
    vpc_id = aws_vpc.demo-vpc.id

    ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}



