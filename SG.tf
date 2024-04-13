resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow all inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.team-demo.id

  // Rule allowing ssh inbound traffic
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" // This indicates ssh protocols
    cidr_blocks = ["0.0.0.0/0"] // All source IPs
  }

  // Rule allowing all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" // All protocols
    cidr_blocks = ["0.0.0.0/0"] // All destination IPs
  }

  tags = {
    Name = "allow_all"
  }
}
