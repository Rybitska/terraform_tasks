resource "aws_s3_bucket" "ticket1" {
  bucket_prefix = "aws-s3-devops-task-khrystyna"
  acl    = "private"
  versioning_configuration {
    status = "Enabled"
  }
}
