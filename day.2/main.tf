resource "aws_vpc" "project_2" {
    cidr_block = "10.0.0.0/16"

    tags = {
      Name="project-1"
    }
  
}

resource "aws_internet_gateway" "project_2" {
    vpc_id = aws_vpc.project_2.id
    
    tags = {
      Name="ig"
    }
  
}