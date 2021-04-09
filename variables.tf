variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "es_security_group_names" {
  type        = string
  description = "elasticache-security-group"
  default     = "elasticache-security-group"
}

variable "security_group_names" {
  type        = string
  description = "elasticache-security-group"
  default     = "default"
}

variable "cluster" {
  type = map(any)
  default = {
    cluster_id               = "cluster-example"
    engine                   = "memcached"
    node_type                = "cache.m4.large"
    num_cache_nodes          = 2
    parameter_group_name     = "default.memcached1.4"
    port                     = 11211
    snapshot_retention_limit = "5"
  }
}
