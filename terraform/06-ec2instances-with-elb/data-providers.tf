data "aws_subnet_ids" "default_subnets" {
  //filter {
    //name   = "vpc-id"
    //values = [aws_default_vpc.default.id]
  //}
  vpc_id = aws_default_vpc.default.id
}

data "aws_ami" "aws_linux_2_latest" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }
}