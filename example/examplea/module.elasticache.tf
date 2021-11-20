module "elasticache" {
  source      = "../../"
  kms_key_id  = aws_kms_key.examplea.arn
  common_tags = var.common_tags
  auth_token  = random_string.random.result
}
