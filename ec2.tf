#launch ec2 instance
resource "aws_instance" "ubuntu" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  # the VPC subnet
  subnet_id = aws_subnet.team-public.id
  # the security group
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  
  tags = {
    Name = "team-server"
  }
  }