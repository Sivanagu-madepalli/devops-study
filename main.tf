variable "users" {
  default = {
    Jimmy   = { country : "China", role : "Admin" },
    Scout   = { country : "India", role : "Developer" },
    paraboy = { country : "China", role : "Tester" },
    Jhonny  = { country : "India", role : "Finance" },
  pukar = { country : "India", role : "Admin" } }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "my_iam_user" {
  #count=length(var.names)
  #name = var.names[count.index]
  for_each = var.users
  name     = each.key
  tags = {
    country : each.value.country
    role : each.value.role
  }
}