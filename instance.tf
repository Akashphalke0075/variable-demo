resource "aws_instance" "class-nginx" {
    ami = var.aws_ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.class-security.id]

    user_data = <<-EOF
        #!/bin/bash
        sudo apt update -y &&
        sudo apt install -y nginx
        echo "<h1>Welcome to Terraform nginx-demo</h1>" > /var/www/html/index.html
        EOF
  tags = {
    "Name" = var.aws_name
  }
}

# resource "aws_instance" "class-nginx" {
#   ami = var.aws_ami
#   instance_type = var.instance_type
#   vpc_security_group_ids = ["aws_security_group.new-security-sg.id"]

#   tags = {
#     Name = var.aws_name
  
#   }
#   user_data = <<-EOF
#   #!/bin/bash
#   sudo apt update -y &&
#   sudo apt install -y nginx
#   echo "<h1>Welcome to Terraform akash nginx-demo</h1>" > /var/www/html/index.html
#   EOF
# }
