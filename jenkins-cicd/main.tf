resource "aws_vpc" "ec2_vpc" {
  cidr_block           = var.cidr.0
  enable_dns_hostnames = true
  tags = {
    "Name" = "ec2_vpc"
  }

}

resource "aws_subnet" "public_subnet" {
  cidr_block        = var.cidr.1
  availability_zone = var.av-zones.0
  vpc_id            = aws_vpc.ec2_vpc.id
  tags = {
    "Name" = "PUblic subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  cidr_block        = var.cidr.2
  availability_zone = var.av-zones.1
  vpc_id            = aws_vpc.ec2_vpc.id
  tags = {
    "Name" = "Private subnet"
  }
}
