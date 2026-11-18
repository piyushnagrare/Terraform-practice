resource "aws_vpc" "project-1" {
    cidr_block = "10.0.0.0/16"

    tags={
        Name="project-1"
    }

  
}

resource "aws_internet_gateway" "get" {
    vpc_id = aws_vpc.project-1.id
    tags={
        Name="get"
    }
  
}

resource "aws_subnet" "subnet-1" {
    vpc_id = aws_vpc.project-1.id
    cidr_block = "10.0.1.0/24"

    tags={
        Name="subnet-1"
    }
  
}

resource "aws_route_table" "route-1" {
    vpc_id = aws_vpc.project-1.id

    tags={
        Name="route-1"
    }
    
  
}

resource "aws_route" "route-1" {
    route_table_id=aws_route_table.route-1.id
    destination_cidr_block="0.0.0.0/0"
    gateway_id=aws_internet_gateway.get.id
  
}

resource "aws_route_table_association" "association" {
    route_table_id = aws_route_table.route-1.id
    subnet_id = aws_subnet.subnet-1.id
  
}

