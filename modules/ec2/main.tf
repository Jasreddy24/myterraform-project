resource "aws_instance" "demo-ec2" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    security_groups=[var.aws_security_group_id]
    
    

    user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Terraform Deployed Apache - ${terraform.workspace}</h1>" > /var/www/html/index.html
              EOF
              
    tags = {
        Name = var.ec2_name 
}


}