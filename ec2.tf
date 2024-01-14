resource "aws_instance" "example_instance" {
  ami           = "ami-0c0b74d29acd0cd97"  
  instance_type = "t2.micro"
  key_name      = "my_key_pair"
  associate_public_ip_address = true

  subnet_id = aws_subnet.pub_subnet_az1.id

  tags = {
    Name = "Furiosa"
  }
}

resource "aws_instance" "example_instance2" {
  ami           = "ami-0c0b74d29acd0cd97"  
  instance_type = "t2.micro"
  key_name      = "my_key_pair"
  associate_public_ip_address = true

  subnet_id = aws_subnet.pub_subnet_az2.id

  tags = {
    Name = "Furiosa2"
  }
}