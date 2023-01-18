variable "names" {
  default = ["ranga", "tom", "jane"]
}
provider "aws" {
  region  = "us-east-1"
  version = "~> 4.49.0"
}

resource "aws_iam_user" "my_iam_users" {
  count = length(var.names)
  name = var.names[count.index]
}