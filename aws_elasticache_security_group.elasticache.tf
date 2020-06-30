resource "aws_elasticache_security_group" "elasticache" {
  name                 = var.es_security_group_names
  security_group_names = [var.security_group_names]
}
