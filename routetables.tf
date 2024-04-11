#create a public route table
resource "aws_route_table" "publicRT" {
  vpc_id = aws_vpc.team-demo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.team-igw.id
  }

  tags = {
    Name = "publicRT"
  }
}
#create a private route table
resource "aws_route_table" "privateRT" {
  vpc_id = aws_vpc.team-demo.id

 
  tags = {
    Name = "privateRT"
  }
}