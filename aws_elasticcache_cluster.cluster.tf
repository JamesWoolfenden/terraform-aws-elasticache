resource "aws_elasticache_cluster" "cluster" {
  cluster_id               = var.cluster["cluster_id"]
  engine                   = var.cluster["engine"]
  node_type                = var.cluster["node_type"]
  num_cache_nodes          = var.cluster["num_cache_nodes"]
  parameter_group_name     = var.cluster["parameter_group_name"]
  port                     = var.cluster["port"]
  snapshot_retention_limit = var.cluster["snapshot_retention_limit"]
  subnet_group_name        = aws_elasticache_subnet_group.elasticache.name
}
