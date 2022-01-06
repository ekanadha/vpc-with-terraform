resource "aws_instance" "web-dev" {
  ami           ="ami-052cef05d01020f1d"
  instance_type = "t2.micro"
  key_name = "chinna"
  #vpc_id ="vpc-04cd548f4ad948672"
  #subnet_id = "00ea65ac16f5d6228
  vpc_security_group_ids= ["${aws_security_group.ec2-456.id}"]
  subnet_id = "${aws_subnet.private-1b.id}" 
 user_data = <<EOF
            #!/bin/bash
             yum update -y
             yum install httpd -y 
             systemctl enable httpd
             systemctl start httpd
             mkdir -p  /var/www/html/cricket/
             echo "this is cricket" >/var/www/html/cricket/index.html
       EOF
 
  tags = {
    Name = "web-dev"
  }
}

resource "aws_instance" "web-bastion-1" {
  ami           ="ami-052cef05d01020f1d"
  instance_type = "t2.micro"
  key_name = "chinna"
  #vpc_id ="vpc-04cd548f4ad948672"
  #subnet_id = "00ea65ac16f5d6228
  vpc_security_group_ids= ["${aws_security_group.ec2-bst.id}"]
  subnet_id = "${aws_subnet.public-2a.id}"
 tags = {
    Name = "web-bastion-1"
  }
}
