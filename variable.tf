variable "aws_region" {
    type = string 
    default = "us-east-1"
}

variable "instance_name" {
    type = string 
    default = "nginx-instance"
}

variable "aws_ami" {
    type = string 
    default = "ami-0b93ce03dcbcb10f6"
}

variable "instance_type" {
    type = string 
    default = "t2.micro"
}