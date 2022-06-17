resource "aws_iam_user" "bob" {
  name = "bob"
  # Do not change below tags
  tags = local.task_tags
}

resource "aws_iam_group" "sysusers" {
  name = "sysusers"
}

resource "aws_iam_group_membership" "members" {
  name = "iam-group-membership"

  users = [aws_iam_user.bob.name]
  group = aws_iam_group.sysusers.name
}
