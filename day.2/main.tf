
"I am not even sure i know myself and what's really important to me,
I have to ask myself --- is it worthy?"




# resource "aws_vpc" "project_2" {
#   cidr_block = "10.0.0.0/16"

#   tags={
#     Name="project-2"
#   }
  
# }

# resource "aws_internet_gateway" "ig" {
#   vpc_id = aws_vpc.project_2.id

#   tags={
#     Name="ig"
#   }
  
# }

# resource "aws_route_table" "route_table" {
#   vpc_id = aws_vpc.project_2.id

#   tags={
#     Name="route-table"
#   }
  
# }

# resource "aws_route" "public_subnet" {
#   route_table_id = aws_route_table.route_table.id
#   destination_cidr_block = "0.0.0.0/0"
#   gateway_id = aws_internet_gateway.ig.id
  
# }

# resource "aws_subnet" "public_subnet" {
#   vpc_id = aws_vpc.project_2.id
#   cidr_block = "10.0.1.0/24"
#   availability_zone = "ap-south-1a"

#   tags = {
#     Name="public-subnet"
#   }
  
# }  

# resource "aws_route_table" "route_1" {
#   vpc_id=aws_vpc.project_2.id

#   tags={
#     Name="route-1"
#   }
  
# }

# resource "aws_route" "route_1" {
#   route_table_id = aws_route_table.route_1.id
#   destination_cidr_block = "0.0.0.0/0"
#   gateway_id = aws_internet_gateway.ig.id
  
# }

# resource "aws_route_table_association" "public_association" {
#   subnet_id = aws_subnet.public_subnet.id
#   route_table_id = aws_route_table.route_1.id

  
# }     


# resource "aws_vpc" "project_2" {
#   cidr_block = "10.0.0.0/16"

#   tags={
#     Name="project-2"
#   }
  
# }

# resource "aws_internet_gateway" "ig" {
#   vpc_id=aws_vpc.project_2.id

#   tags={
#     Name="ig"
#   }
  
# }

# resource "aws_route_table" "route_1" {
#   vpc_id = aws_vpc.project_2.id

#   tags={
#     Name="route_1"
#   }
  
# }

# resource "aws_subnet" "public_subnet" {
#   vpc_id = aws_vpc.project_2.id
#   cidr_block = "10.0.1.0/24"
#   availability_zone = "ap-south-1a"
  
#   tags = {
#     Name="public-subnet"
#   }
  
# }

# resource "aws_route" "route_1" {
#   route_table_id = aws_route_table.route_1.id

#   destination_cidr_block = "0.0.0.0/0"
#   gateway_id = aws_internet_gateway.ig.id

#   }

#   resource "aws_route_table_association" "public_association" {
#     subnet_id = aws_subnet.public_subnet.id
#     route_table_id = aws_route_table.route_1.id
    
    
#   }  



# resource "aws_vpc" "project_2" {
#   cidr_block = "10.0.0.0/16"

#   tags={
#     Name="project-2"
#   }
  
# }

# resource "aws_internet_gateway" "ig" {
#   vpc_id = aws_vpc.project_2.id

#   tags={
#     Name="ig"
#   }
  
# }

# resource "aws_route_table" "route_1" {
#   vpc_id = aws_vpc.project_2.id

#   tags={
#     Name="route-1"
#   }
  
# }

# resource "aws_subnet" "public_subnet" {
#   vpc_id=aws_vpc.project_2.id
#   cidr_block="10.0.1.0/24"
#   availability_zone="ap-south-1a"

#   tags={
#     Name="public-subnet"
#   }
  
# }

# resource "aws_route" "route_1" {
#   route_table_id = aws_route_table.route_1.id
#   destination_cidr_block = "0.0.0.0/0"
#   gateway_id = aws_internet_gateway.ig.id
  
# }

# resource "aws_route_table_association" "public_association" {
#   subnet_id = aws_subnet.public_subnet.id
#   route_table_id = aws_route_table.route_1.id
# }  


# resource "aws_vpc" "project_1" {
#   cidr_block = "10.0.0.0/16"

#   tags={
#     Name = "project-1"
#   }
  
# }

# resource "aws_internet_gateway" "ig" {
#   vpc_id = aws_vpc.project_1.id

#   tags={
#     Name="ig"
#   }
  
# }

# resource "aws_route_table" "route_1" {
#   vpc_id = aws_vpc.project_1.id
  
#   tags={
#     Name="route-1"
#   }
  
# }

# resource "aws_subnet" "public_subnet" {
#   vpc_id = aws_vpc.project_1.id
#   cidr_block = "10.0.1.0/24"
#   availability_zone = "ap-south-1a"

#   tags={
#     Name="public-subnet"
#   }
  
# }

# resource "aws_route" "route_1" {

#   route_table_id = aws_route_table.route_1.id
#   destination_cidr_block = "0.0.0.0/0"
#    gateway_id = aws_internet_gateway.ig.id
  
# }

# resource "aws_route_table_association" "public_association" {
#   subnet_id = aws_subnet.public_subnet.id
#   route_table_id = aws_route_table.route_1.id
  
# }  

resource "aws_vpc" "project_3" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "project-3"
  }
  
}

resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.project_3.id

  tags = {
    Name = "ig"
  }
  
}


resource "aws_route_table" "route_3" {
  vpc_id = aws_vpc.project_3.id

  tags = {
    Name = "route-3"
  }
  
}
resource "aws_subnet" "subnet_3" {
  vpc_id = aws_vpc.project_3.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "subnet-3"
  }
  
}

resource "aws_route" "route_3" {
  route_table_id = aws_route_table.route_3.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.ig.id
  
}

resource "aws_route_table_association" "subnet_association" {
  route_table_id = aws_route_table.route_3.id
  subnet_id = aws_subnet.subnet_3.id
  
}

"I am not even sure i know myself and what's really important to me,
 I have to ask myself --- is it worthy?"