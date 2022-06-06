resource "aws_eip" "example" {
  vpc      = true
}
resource "aws_nat_gateway" "example" {
  allocation_id = "aws_eip.nat.id"
  subnet_id     = aws_subnet.public1.id
 
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
  tags = local.task_tags
}