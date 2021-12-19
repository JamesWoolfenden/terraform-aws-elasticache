resource "aws_elasticache_subnet_group" "elasticache" {
  name       = var.es_subnet_group_name
  subnet_ids = var.subnet_ids
}
