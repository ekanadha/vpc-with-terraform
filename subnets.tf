resource "aws_subnet" "public-1a" {
  vpc_id     = aws_vpc.dev-vpc-1.id
  cidr_block = "10.0.0.0/24"
  map_public_ip_on_launch =true    
  availability_zone = "ap-south-1a"

  tags = {
    Name = "public-1a"
  }
}

resource "aws_subnet" "private-1b" {
  vpc_id     = aws_vpc.dev-vpc-1.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch =true    
  availability_zone = "ap-south-1a"

  tags = {
    Name = "private-1b"
  }
}


resource "aws_subnet" "public-2a" {
  vpc_id     = aws_vpc.dev-vpc-1.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch =true    
  availability_zone = "ap-south-1b"

  tags = {
    Name = "public-2a"
  }
}


resource "aws_subnet" "private-2b" {
  vpc_id     = aws_vpc.dev-vpc-1.id
  cidr_block = "10.0.3.0/24"
  map_public_ip_on_launch =true    
  availability_zone = "ap-south-1b"

  tags = {
    Name = "private-2b"
  }
}


resource "aws_subnet" "public-3a" {
  vpc_id     = aws_vpc.dev-vpc-1.id
  cidr_block = "10.0.4.0/24"
  map_public_ip_on_launch =true    
  availability_zone = "ap-south-1c"

  tags = {
    Name = "public-3c"
  }
}

resource "aws_subnet" "private-3c" {
  vpc_id     = aws_vpc.dev-vpc-1.id
  cidr_block = "10.0.5.0/24"
  map_public_ip_on_launch =true    
  availability_zone = "ap-south-1c"

  tags = {
    Name = "private-3c"
  }
}