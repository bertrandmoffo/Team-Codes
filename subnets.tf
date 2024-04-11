# create a public subnets
resource "aws_subnet" "team-public" {
  vpc_id     = aws_vpc.team-demo.id
  cidr_block = "20.0.1.0/24"
  availability_zone = "us-east-1a"
  depends_on = [ aws_internet_gateway.team-igw ]
  map_public_ip_on_launch = true

  tags = {
    Name = "team-public"
  }
}

# create a private subnets
resource "aws_subnet" "team-private" {
  vpc_id     = aws_vpc.team-demo.id
  cidr_block = "20.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "team-private"
  }
}