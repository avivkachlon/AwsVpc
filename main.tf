provider "aws" {
  region = var.region
}

# Create VPC
resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "main-vpc"
  }
}

# Create first subnet
resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.subnet1_cidr
  availability_zone = "${var.region}a"

  tags = {
    Name = "subnet-1"
  }
}

# Create second subnet
resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.subnet2_cidr
  availability_zone = "${var.region}b"

  tags = {
    Name = "subnet-2"
  }
}
