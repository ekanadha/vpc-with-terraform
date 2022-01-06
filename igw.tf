resource "aws_internet_gateway" "dev-igw-1" {
  vpc_id = aws_vpc.dev-vpc-1.id

  tags = {
    Name = "dev-igw-1"
  }
}
