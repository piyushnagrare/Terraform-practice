resource "aws_vpc" "project_1" {
    cidr_block = "10.0.0.0/16"

    tags={
        Name = "project-1c"
    }
  
}