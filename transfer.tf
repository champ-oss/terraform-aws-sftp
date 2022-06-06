resource "aws_transfer_server" "this" {
  identity_provider_type = var.identity_provider_type
  logging_role           = aws_iam_role.this.arn
  domain                 = "S3"
  protocols              = var.protocols
  force_destroy          = !var.protect
  security_policy_name   = var.security_policy_name
  endpoint_type          = var.endpoint_type
  tags                   = merge({ Name = local.name }, local.tags, var.tags)
}

resource "aws_transfer_user" "this" {
  server_id      = aws_transfer_server.this.id
  user_name      = var.user_name
  role           = aws_iam_role.this.arn
  home_directory = "/${local.bucket}"
  tags           = merge(local.tags, var.tags)
}

resource "aws_transfer_ssh_key" "this" {
  server_id = aws_transfer_server.this.id
  user_name = aws_transfer_user.this.user_name
  body      = tls_private_key.this.public_key_openssh
}