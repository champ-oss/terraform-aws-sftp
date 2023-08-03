module "s3" {
  count           = var.bucket == "" ? 1 : 0 # Create a bucket if one is not passed in
  source          = "github.com/champ-oss/terraform-aws-s3.git?ref=v1.0.39-d4fa5e1"
  git             = var.git
  name            = local.name
  use_name_prefix = false
  protect         = var.protect
  versioning      = true
  tags            = merge(local.tags, var.tags)
}