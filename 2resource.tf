resource "aws_instance" "class-server" {
    ami = "ami-0b93ce03dcbcb10f6"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["aws_security_group.class-sg.id"]

    tags = {
        Name = "ec2-server"
    }

    user_data = <<-EOF
  #!/bin/bash
  sudo apt update -y &&
  sudo apt install -y nginx
  echo "<h1>Welcome to Terraform akash nginx-demo</h1>" > /var/www/html/index.html
  EOF

}