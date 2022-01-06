resource "aws_security_group" "ec2-456" {
  name        = "ec2-1"
  description = "Allow TLS inbound traffic"
  vpc_id      ="vpc-0f90698492fb2825c"

  ingress {
    description      = "via alb"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    security_groups = [aws_security_group.ec2-bst.id]
    #cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "ec2-1"
  }
}


resource "aws_security_group" "ec2-bst" {
  name        = "ec2-bst"
  description = "Allow TLS inbound traffic"
  vpc_id      ="vpc-0f90698492fb2825c"

  ingress {
    description      = "via alb"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    #security_groups = [aws_security_group.alb-sg-456.id]
    cidr_blocks      = ["103.110.170.86/32"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  ingress {
    description      = "via alb"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    #security_groups = [aws_security_group.alb-sg-456.id]
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "ec2-bst"
  }
}