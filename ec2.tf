#Creating EC2 instance in public subnet
resource "aws_instance" "public-server" {
    ami = "ami-051f8a213df8bc089" #amazon linux ami
    instance_type = "t2.micro"
    subnet_id = aws_subnet.team-public.id
    security_groups = [aws_security_group.allow_all.id]
    key_name = "moffo-key"
    tags = {
      Name ="public-server"
    }
  
}

# Creating EC2 instance in private subnet
resource "aws_instance" "private-server" {
    ami = "ami-051f8a213df8bc089" #Amazon Linux
    instance_type = "t2.micro"
    subnet_id = aws_subnet.team-private.id
    security_groups =[aws_security_group.allow_all.id]
    key_name = "moffo-key"
    tags = {
      Name ="private-server"
    }
}