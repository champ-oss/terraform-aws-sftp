resource "aws_ssm_parameter" "this" {
  name  = "${var.git}-${local.name}"
  type  = "SecureString"
  value = tls_private_key.this.private_key_pem
  tags  = merge(local.tags, var.tags)
}