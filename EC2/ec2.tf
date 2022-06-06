resource "aws_instance" "web" {
  ami = "ami-ae6272b8"
  instance_type = "t2.micro"
  user_data = "sudo apt-get install apache2 -y"
  tags = local.task_tags
}