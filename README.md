# terraform-aws-sftp

A Terraform module for creating an AWS Transfer SFTP service

[![.github/workflows/module.yml](https://github.com/champ-oss/terraform-aws-sftp/actions/workflows/module.yml/badge.svg?branch=main)](https://github.com/champ-oss/terraform-aws-sftp/actions/workflows/module.yml)
[![.github/workflows/lint.yml](https://github.com/champ-oss/terraform-aws-sftp/actions/workflows/lint.yml/badge.svg?branch=main)](https://github.com/champ-oss/terraform-aws-sftp/actions/workflows/lint.yml)
[![.github/workflows/sonar.yml](https://github.com/champ-oss/terraform-aws-sftp/actions/workflows/sonar.yml/badge.svg)](https://github.com/champ-oss/terraform-aws-sftp/actions/workflows/sonar.yml)

[![SonarCloud](https://sonarcloud.io/images/project_badges/sonarcloud-black.svg)](https://sonarcloud.io/summary/new_code?id=terraform-aws-sftp_champ-oss)

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=terraform-aws-sftp_champ-oss&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=terraform-aws-sftp_champ-oss)
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=terraform-aws-sftp_champ-oss&metric=vulnerabilities)](https://sonarcloud.io/summary/new_code?id=terraform-aws-sftp_champ-oss)
[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=terraform-aws-sftp_champ-oss&metric=reliability_rating)](https://sonarcloud.io/summary/new_code?id=terraform-aws-sftp_champ-oss)

## Example Usage

See the `examples/` folder

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.71.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.71.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_s3"></a> [s3](#module\_s3) | github.com/champ-oss/terraform-aws-s3.git | v1.0.20-34f2235 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_route53_record.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_transfer_server.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_server) | resource |
| [aws_transfer_ssh_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_ssh_key) | resource |
| [aws_transfer_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_user) | resource |
| [random_string.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [tls_private_key.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket"></a> [bucket](#input\_bucket) | https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_user#home_directory | `string` | `""` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record#name | `string` | `""` | no |
| <a name="input_endpoint_type"></a> [endpoint\_type](#input\_endpoint\_type) | https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_server#endpoint_type | `string` | `"PUBLIC"` | no |
| <a name="input_git"></a> [git](#input\_git) | Name of the Git repo | `string` | n/a | yes |
| <a name="input_identity_provider_type"></a> [identity\_provider\_type](#input\_identity\_provider\_type) | https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_server#identity_provider_type | `string` | `"SERVICE_MANAGED"` | no |
| <a name="input_name"></a> [name](#input\_name) | Unique name for resources | `string` | `""` | no |
| <a name="input_protect"></a> [protect](#input\_protect) | Disable force deleting resources | `bool` | `true` | no |
| <a name="input_protocols"></a> [protocols](#input\_protocols) | https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_server#protocols | `list(string)` | <pre>[<br>  "SFTP"<br>]</pre> | no |
| <a name="input_security_policy_name"></a> [security\_policy\_name](#input\_security\_policy\_name) | https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_server#security_policy_name | `string` | `"TransferSecurityPolicy-2018-11"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to assign to resources | `map(string)` | `{}` | no |
| <a name="input_user_name"></a> [user\_name](#input\_user\_name) | https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_user#user_name | `string` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record#zone_id | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket"></a> [bucket](#output\_bucket) | Name of bucket |
| <a name="output_dns"></a> [dns](#output\_dns) | DNS of SFTP server or Route53 CNAME |
| <a name="output_name"></a> [name](#output\_name) | Name of resources |
| <a name="output_private_key"></a> [private\_key](#output\_private\_key) | https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#private_key_pem |
| <a name="output_private_key_ssm"></a> [private\_key\_ssm](#output\_private\_key\_ssm) | Name of SSM parameter containing the private SSH key |
| <a name="output_public_key"></a> [public\_key](#output\_public\_key) | https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#public_key_openssh |
| <a name="output_user_name"></a> [user\_name](#output\_user\_name) | https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_user#user_name |
<!-- END_TF_DOCS -->

## Features



## Contributing

