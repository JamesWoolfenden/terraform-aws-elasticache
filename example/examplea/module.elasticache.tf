module "elasticache" {
  source      = "../../"
  common_tags = var.common_tags
  auth_token  = random_string.random.result
}
