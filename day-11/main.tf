resource "aws_vpc" "project-1" {
    cidr_block = "10.0.0.0/16"


    tags={
        Name="project-1"
    }
  
}

resource "aws_internet_gateway" "gate" {
    vpc_id = aws_vpc.project-1.id

    tags={
        Name="gate"
    }
  
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.project-1.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"

    tags={
        Name="public"

    }
  
}

resource "aws_route_table" "route-1" {
    vpc_id = aws_vpc.project-1.id


    tags={
        Name="route-1"
    }
  
}

resource "aws_route" "route-1" {
    route_table_id = aws_route_table.route-1.id
    gateway_id = aws_internet_gateway.gate.id
    destination_cidr_block = "0.0.0.0/0"
  
}

resource "aws_route_table_association" "association" {
    route_table_id = aws_route_table.route-1.id
    subnet_id = aws_subnet.public.id
    
}



# resource "aws_instance" "me" {
#     ami="ami-0aacbf72109c53c0c"
#     instance_type = "t3.micro"

# subnet_id = aws_subnet.public.id
# associate_public_ip_address = true

# vpc_security_group_ids = [aws_security_group.my_sg.id ]
# tags={
#     Name="me"
# }
  
# }

# resource "aws_security_group" "my_sg" {
#   name   = "my-security-group"
#   vpc_id = aws_vpc.project-1.id

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["YOUR_PUBLIC_IP/32"]
#   }

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "my-security-group"
#   }
# }
