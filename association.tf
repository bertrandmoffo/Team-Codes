#Associate Subnets with route tables

#Public subnet
resource "aws_route_table_association" "RT_to_Team-public" {
    subnet_id = aws_subnet.team-public.id
  route_table_id = aws_route_table.publicRT.id
}

#Private Subnet
resource "aws_route_table_association" "RT_to_Team-private" {
    subnet_id = aws_subnet.team-private.id
    route_table_id = aws_route_table.privateRT.id
  
}