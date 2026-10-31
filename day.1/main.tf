# resource "aws_vpc" "name" {
#     cidr_block = "10.0.0.0/16"
    
#     tags = {
#         Name="project-1"
#     }
# }
# resource "aws_vpc" "name" {
#     cidr_block="10.0.0.0/16"

#     tags={
#         Name="project-1"
#     }
  
# }

# resource "aws_vpc" "name" {
#     cidr_block = "10.0.0.0/16"

#     tags={
#         Name="project_1"
#     }
  
# }  
# resource "aws_vpc" "name" {
#     tags={
#         Name="project_1"

#         cidr_block="10.0.0.0/16"
#     }
  
# }

# resource "aws_subnet" "name" {
#     vpc_id = aws_vpc.name.id
#     cidr_block = "10.0.1.0/24"
#     availability_zone = "ap-south-1a"

#     tags={
#         Name="public-subnet"
#     }
#   } 
# resource "aws_subnet" "public_subnet" {
#     vpc_id = aws_vpc.name.id
#     cidr_block = "10.0.1.0/24"
#     availability_zone = "ap-south-1a"

#     tags={
#         Name="public-subnet"
#     }
#   }

resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"

    tags = {
      Name="project_1"

    }
  
}

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "a-south-1a"

    tags={
        Name="pubic-subnet"
    }
  }
 