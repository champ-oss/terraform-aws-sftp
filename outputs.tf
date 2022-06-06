output "name" {
  description = "Name of resources"
  value       = local.name
}

output "dns" {
  description = "DNS of SFTP server or Route53 CNAME"
  value       = var.domain_name != null ? var.domain_name : aws_transfer_server.this.endpoint
}

output "user_name" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_user#user_name"
  value       = aws_transfer_user.this.user_name
}

output "private_key_ssm" {
  description = "Name of SSM parameter containing the private SSH key"
  value       = aws_ssm_parameter.this.name
}

output "private_key" {
  description = "https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#private_key_pem"
  value       = tls_private_key.this.private_key_pem
}

output "public_key" {
  description = "https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#public_key_openssh"
  value       = tls_private_key.this.public_key_openssh
}

output "bucket" {
  description = "Name of bucket"
  value       = local.bucket
}