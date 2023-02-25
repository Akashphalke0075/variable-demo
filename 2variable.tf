variable "aws_name" {
    default = "nginx-server"
}

# variable "new_instance" {
#     type = map
#     default = {
#         "dev" = "t1.micro"
#         "test" = "t2.micro"
#         "prod" = "t3.micro"
#     }
# }

variable "aws_tags" {
    type = map
    default = {
        "name" = "new-nst"
        "dev" = "dev-12"
        "prdo" = "prodo-12"
        "mana" = "mana-12"
    }

}


variable "aws_ami" {
    default = "ami-0b93ce03dcbcb10f6"

     validation {
      condition = length(var.aws_ami)>4 && substr(var.aws_ami, 0, 4) == "ami-"
      error_message = "enter valid ami"
    }

}

variable "aws_region" {
    default = "us-east-1"
}

variable "new_instance" {
    type = string
    default = "t2.micro"

    validation {
        error_message = "only t1.micro, t2.micro and t3.small are allowed"
        condition = contains (["t1.micro", "t2.micro" , "t3.small"], var.new_instance)
    }
}