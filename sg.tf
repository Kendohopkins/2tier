resource "aws_security_group" "example_security_group" {
  name        = "vilgefortz-security-group"
  vpc_id      =  aws_vpc.vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vilgefortz-security-group"
  }
}