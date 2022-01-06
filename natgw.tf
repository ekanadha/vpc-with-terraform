resource "aws_eip" "eip" {
  vpc      = true
}


resource "aws_nat_gateway" "dev-natgw-1" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public-2a.id

  tags = {
    Name = "dev-natgw-1"
  }
  
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  #depends_on = [aws_internet_gateway.dev-natgw-1]
}