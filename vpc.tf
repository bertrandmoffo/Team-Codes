#provisioning a vpc

resource "aws_vpc" "team-demo" {
  cidr_block       = "20.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "team-demo"
  }
}