resource "aws_elasticache_replication_group" "example" {
  automatic_failover_enabled    = var.replication_group["automatic_failover_enabled"]
  availability_zones            = var.replication_group["availability_zones"]
  replication_group_id          = var.replication_group["replication_group_id"]
  replication_group_description = var.replication_group["replication_group_description"]
  node_type                     = var.replication_group["node_type"]
  number_cache_clusters         = var.replication_group["number_cache_clusters"]
  parameter_group_name          = var.replication_group["parameter_group_name"]
  port                          = var.replication_group["port"]
  auth_token                    = var.auth_token
  at_rest_encryption_enabled    = true
  transit_encryption_enabled    = true
  kms_key_id                    = var.kms_key_id
}
