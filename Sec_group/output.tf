output security_group_arn {
  value = aws_instance.arn
}
output security_group_id {
  value = aws_instance.id
}

output security_group_owner_id {
  value = aws_instance.group_owner.id 
}