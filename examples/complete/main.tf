provider "aws" {
  region = "us-east-2"
}

data "aws_route53_zone" "this" {
  name = "oss.champtest.net."
}

module "this" {
  source      = "../../"
  git         = "terraform-aws-sftp"
  protect     = false
  user_name   = "exampleuser"
  zone_id     = data.aws_route53_zone.this.zone_id
  domain_name = "terraform-aws-sftp.${data.aws_route53_zone.this.name}"
}