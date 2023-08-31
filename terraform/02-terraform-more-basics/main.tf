variable "iam_prefix"{
  type=string
  default = "dev-user"
}

provider "aws" {
  region = "us-east-1"
  #version = "~>5.0"
}

resource "aws_iam_user" "my_aws_iam_users" {
  count=3
  name ="${var.iam_prefix}_${count.index}"
}
