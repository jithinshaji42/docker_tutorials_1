variable "iam_user_name_prefix" {
  type = string
  #default = "my_iam_user"
}
provider "aws" {
  region  = "us-east-1"
  version = "~> 4.49.0"
}

resource "aws_iam_user" "my_iam_users" {
  count = 1
  name  = "${var.iam_user_name_prefix}_${count.index}"

}