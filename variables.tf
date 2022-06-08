variable "tags" {
  description = "Map of tags to assign to resources"
  type        = map(string)
  default     = {}
}

variable "git" {
  description = "Name of the Git repo"
  type        = string
}

variable "bucket" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_user#home_directory"
  type        = string
  default     = ""
}

variable "name" {
  description = "Unique name for resources"
  type        = string
  default     = ""
}

variable "user_name" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_user#user_name"
  type        = string
}

variable "protect" {
  description = "Disable force deleting resources"
  type        = bool
  default     = true
}

variable "protocols" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_server#protocols"
  type        = list(string)
  default     = ["SFTP"]
}

variable "endpoint_type" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_server#endpoint_type"
  type        = string
  default     = "PUBLIC"
}

variable "identity_provider_type" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_server#identity_provider_type"
  type        = string
  default     = "SERVICE_MANAGED"
}

variable "security_policy_name" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/transfer_server#security_policy_name"
  type        = string
  default     = "TransferSecurityPolicy-2018-11"
}

variable "domain_name" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record#name"
  type        = string
  default     = ""
}

variable "zone_id" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record#zone_id"
  type        = string
  default     = ""
}