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

variable "replication_group" {
  default = {
    automatic_failover_enabled    = true
    availability_zones            = ["us-west-2a", "us-west-2b"]
    replication_group_id          = "tf-rep-group-1"
    replication_group_description = "test description"
    node_type                     = "cache.m4.large"
    number_cache_clusters         = 2
    parameter_group_name          = "default.redis3.2"
    port                          = 6379
  }
}

variable "auth_token" {
  type        = string
  description = "(optional) describe your variable"
}
