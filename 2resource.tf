resource "aws_instance" "class-ec2-server" {
  instance_type = "t2.micro" #Refer value from ec2_instance_type variable
  ami = "ami-0b93ce03dcbcb10f6"
  vpc_security_group_ids = [aws_security_group.class-sg.id]
  #key_name = "jenkins-slave"
  user_data = <<-EOF
        #!/bin/bash
        sudo apt update -y &&
        sudo apt install -y nginx
        echo "<h1>Welcome to Terraform nginx-demo</h1>" > /var/www/html/index.html
        EOF
  tags = {
    "Name" = "new-ec2-serv"
  }
}