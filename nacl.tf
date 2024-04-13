#Create a nacl on the public subnet

resource "aws_network_acl" "public-nacl" {
  vpc_id = aws_vpc.team-demo.id
  subnet_ids = [aws_subnet.team-public.id]

  egress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name = "public-nacl"
  }
}

#create a nacl on the private subnet
resource "aws_network_acl" "private-nacl" {
  vpc_id = aws_vpc.team-demo.id
  subnet_ids = [aws_subnet.team-private.id]

  egress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "20.0.0.0/16"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "20.0.0.0/16"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name = "private-nacl"
  }
}
