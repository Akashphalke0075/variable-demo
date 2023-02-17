resource "aws_security_group" "class-security" {
    name = "class-security-group"
    description = "Allow SSH Access"
    


ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["106.213.75.98/32"]
}

ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

egress {
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    from_port = 0
    to_port = 0
    protocol = -1
}
}