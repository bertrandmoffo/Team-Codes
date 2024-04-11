#create an internet gateway
resource "aws_internet_gateway" "team-igw" {
  vpc_id = aws_vpc.team-demo.id

  tags = {
    Name = "team-igw"
  }
}