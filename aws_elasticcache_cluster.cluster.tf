resource "aws_elasticache_cluster" "cluster" {
  cluster_id           = var.cluster["cluster_id"]
  engine               = var.cluster["engine"]
  node_type            = var.cluster["node_type"]
  num_cache_nodes      = var.cluster["num_cache_nodes"]
  parameter_group_name = var.cluster["parameter_group_name"]
  port                 = var.cluster["port"]
}

variable "cluster" {
  type = map
  default = {
    cluster_id           = "cluster-example"
    engine               = "memcached"
    node_type            = "cache.m4.large"
    num_cache_nodes      = 2
    parameter_group_name = "default.memcached1.4"
    port                 = 11211
  }
}
