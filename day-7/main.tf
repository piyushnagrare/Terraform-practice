resource "aws_vpc" "project-1" {
    cidr_block="10.0.0.0/16"
    tags={
        name="project-1"
    }
  
}

resource "aws_internet_gatway" "ig" {
    vpc_id=aws.vpc.project-1.id
    tags{
        name="ig"
    }
  
}

resource "aws_subnet" "subnet-1" {
    vpc_id=aws.vpc.project-1.id
    cidr_block ="10.0.0.0/24"
    availability_zone="ap-south-1a"
    
    

    tags{
        name="subnet-1"
    }
  
}

resource "aws_route_table" "route-1" {
    vpc_id=aws.vpc.project-1.id

    tags{
        name="route-1"
    }
  
}

resource "aws_route" "route-1" {
    route_table_id=aws.route_table.project.id
    destination_cidr_block="0.0.0.0/0"
    gatway_id=aws.internet_gatway.ig.id
  
}

resource "aws_route" "route-1" {
    route_table_id=aws.route_table.id
    subnet_id=aws.subnet.subnet-1
  
}