resource "aws_route53_record" "this" {
  count   = var.domain_name != "" && var.zone_id != "" ? 1 : 0
  name    = var.domain_name
  zone_id = var.zone_id
  type    = "CNAME"
  ttl     = "300"
  records = [aws_transfer_server.this.endpoint]
}