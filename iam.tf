resource "aws_iam_user" "bob" {
  name = "bob"
}

resource "aws_iam_group" "sysusers" {
  name = "sysusers"
  path = "/"
}

resource "aws_iam_user_group_membership" "example1" {
  user = aws_iam_user.bob.name

  groups = [
    aws_iam_group.sysusers.name,

  ]
  tags = local.task_tags
}
