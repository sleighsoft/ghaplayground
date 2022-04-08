resource "aws_vpc" "vpc" {
  cidr_block = var.cidr
}

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.vpc.id

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound from anywhere"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_ssh_with_valid_cidr" {
  name        = "allow_ssh_with_valid_cidr"
  description = "Allow SSH inbound from specific range"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = tolist([ var.cidr ])
  }
}