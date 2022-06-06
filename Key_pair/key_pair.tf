resource "aws_key_pair" "ilearning" {
key_name   = "ilearning-key"
  public_key = file("~/.ssh/id_rsa.pub")
  tags = local.task_tags
}
