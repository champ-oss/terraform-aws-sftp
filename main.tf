locals {
  tags = {
    git       = var.git
    cost      = "shared"
    creator   = "terraform"
    component = "sftp"
  }
  name   = var.name != "" ? var.name : "sftp-${random_string.this.result}"
  bucket = var.bucket != "" ? var.bucket : "${var.git}-${local.name}"
}

data "aws_region" "this" {}

data "aws_caller_identity" "this" {}

resource "random_string" "this" {
  length  = 10
  special = false
  upper   = false
  lower   = true
  number  = true
}

resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
