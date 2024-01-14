resource "aws_vpc" "vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "${var.project_name}-vpc"
  }
}


# create a public subet for availability zone1
resource "aws_subnet" "pub_subnet_az1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-pub_subnet_az1"
  }
}

# create a private subnet for availability zone1
resource "aws_subnet" "pri_subnet_az1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.project_name}-pri_subnet_az1"
  }
}

# create a public subet for availability zone2
resource "aws_subnet" "pub_subnet_az2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-pub_subnet_az2"
  }
}

# create a private subnet for availability zone2
resource "aws_subnet" "pri_subnet_az2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.project_name}-pri_subnet_az2"
  }
}