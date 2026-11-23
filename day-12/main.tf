resource "aws_instance" "me" {
    ami="ami-0aacbf72109c53c0c"
    instance_type = "t3.micro"

subnet_id = aws_subnet.public.id
associate_public_ip_address = true

vpc_security_group_ids = [aws_security_group.my_sg.id ]
tags={
    Name="me"
}
  
}

resource "aws_security_group" "my_sg" {
  name   = "my-security-group"
  vpc_id = aws_vpc.project-1.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["YOUR_PUBLIC_IP/32"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
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
    Name = "my-security-group"
  }
}
