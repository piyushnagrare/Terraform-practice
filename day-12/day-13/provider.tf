resource "aws_vpc" "projet-1" {
    cidr_block = "10.0.0.0/16"

    tags={
        Name="projet-1"
    }
  
}

resource "aws_internet_gateway" "gate" {
    vpc_id = aws_vpc.projet-1.id

    tags={
        Name="gate"
    }
  
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.projet-1.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"

    tags={
        Name="public"
    }
  
}

resource "aws_route_table" "RT" {
    vpc_id =aws_vpc.projet-1.id

    tags={
        Name="RT"
    }   
}

resource "aws_route" "RT" {
    route_table_id = aws_route_table.RT.id
    gateway_id = aws_internet_gateway.gate.id
    destination_cidr_block = "0.0.0.0/0"
  
}

resource "aws_route_table_association" "association" {
    route_table_id = aws_route_table.RT.id
    subnet_id = aws_subnet.public.id
  
}