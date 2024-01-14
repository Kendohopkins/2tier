resource "aws_eip" "bilbo" {
  domain   = "vpc"
}

resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.bilbo.id
  subnet_id     = aws_subnet.pub_subnet_az1.id

  tags = {
    Name = "${var.project_name}-nat_gw_az1"
  }
}

resource "aws_eip" "gollum" {
  domain   = "vpc"
}

 resource "aws_nat_gateway" "mordor" {
  allocation_id = aws_eip.gollum.id
  subnet_id     = aws_subnet.pub_subnet_az2.id

  tags = {
    Name = "${var.project_name}-nat_gw_az2"
  }
}

 