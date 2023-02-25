resource "aws_instance" "class-server-ec2" {
    ami = var.aws_ami
    instance_type = var.new_instance["dev"]
    vpc_security_group_ids = [aws_security_group.class-sg-server.id]
    
    validation {
      condition = length(var.aws_ami)>4 && substr(var.aws_ami, 0, 4) == "ami-"
    }

     tags = var.aws_tags

  user_data = <<-EOF
  #!/bin/bash
  sudo apt update -y &&
  sudo apt install -y nginx
  echo "<h1>Welcome to Terraform akash nginx-demo</h1>" > /var/www/html/index.html
  EOF


}