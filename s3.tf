resource "aws_s3_bucket" "this" {
  # Create a bucket if one is not passed in
  count = var.bucket == null ? 1 : 0

  bucket        = local.bucket
  acl           = "private"
  force_destroy = !var.protect
  tags          = merge(local.tags)

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  # Create a bucket if one is not passed in
  count = var.bucket == null ? 1 : 0

  bucket                  = aws_s3_bucket.this[0].id
  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
  ignore_public_acls      = true
}