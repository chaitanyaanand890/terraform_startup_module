data "aws_route53_zone" "hosted_zone" {
  name = var.web_domain_name
}

resource "aws_route53_record" "web" {
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.web_sub_domain_name
  type    = "A"
  ttl     = 300
  records = [aws_instance.web.*.public_ip]
}
