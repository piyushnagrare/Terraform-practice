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


  
}

resource "aws_route_table" "RT" {
    vpc_id = aws_vpc.project-1.id

    tags={
        Name="RT"
    }
  
}

resource "aws_route" "RT" {
    route_table_id = aws_route_table.RT.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gate.id
  
}

resource "aws_route_table_association" "association" {
    route_table_id = aws_route_table.RT.id
    gateway_id = aws_internet_gateway.gate.id
  
}