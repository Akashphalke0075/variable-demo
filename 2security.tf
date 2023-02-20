resource "aws_security_group" "class-sg" {
    name = "class-sg-all"
    description = "Allow SSH Access"

    tags = {
        Name = "variable-security-group"
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["106.213.72.45/32"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        ipv6_cidr_blocks = ["::/0"]
        to_port = 0
        from_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }

}