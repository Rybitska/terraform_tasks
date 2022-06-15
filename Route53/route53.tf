resource "aws_route53_record" "www" {
  zone_id = "Z0037891UM2AOYR35LMF"
  name    = "awskhrystyna.com"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]

}
