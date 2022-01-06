
resource "aws_route_table" "route-tb-1" {
  vpc_id = aws_vpc.dev-vpc-1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev-igw-1.id
  }

  tags = {
    Name = "route-tb-1"
  }
}

resource "aws_route_table" "route-tb-2" {
  vpc_id = aws_vpc.dev-vpc-1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.dev-natgw-1.id
  }

  tags = {
    Name = "route-tb-2"
  }
}



resource "aws_route_table_association" "ass-a" {
  subnet_id      = aws_subnet.public-1a.id
  route_table_id = aws_route_table.route-tb-1.id
}
resource "aws_route_table_association" "ass-b" {
  subnet_id      = aws_subnet.public-2a.id
  route_table_id = aws_route_table.route-tb-1.id
}
resource "aws_route_table_association" "ass-c" {
  subnet_id      = aws_subnet.public-3a.id
  route_table_id = aws_route_table.route-tb-1.id
}

resource "aws_route_table_association" "ass-1a" {
  subnet_id      = aws_subnet.private-1b.id
  route_table_id = aws_route_table.route-tb-2.id
}

resource "aws_route_table_association" "ass-1b" {
  subnet_id      = aws_subnet.private-2b.id
  route_table_id = aws_route_table.route-tb-2.id
}

resource "aws_route_table_association" "ass-1c" {
  subnet_id      = aws_subnet.private-3c.id
  route_table_id = aws_route_table.route-tb-2.id
}



