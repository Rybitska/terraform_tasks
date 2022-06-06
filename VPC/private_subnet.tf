resource "aws_subnet" "private1" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.101.0/24"
  map_public_ip_on_launch = true
  tags = local.task_tags
}


resource "aws_subnet" "private2" {
  vpc_id = aws_vpc.main.id
  cidr_block =  "10.0.102.0/24" 
  map_public_ip_on_launch = true
  tags = local.task_tags
}



resource "aws_subnet" "private3" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.103.0/24"
  map_public_ip_on_launch = true
  tags = local.task_tags
}
