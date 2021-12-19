variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(string)
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

variable "kms_key_id" {

}


variable "parameter_group" {
  type = object({
    name   = string
    family = string
  })
  default = {
    name   = "cache-params"
    family = "redis2.8"
  }
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


variable "es_subnet_group_name" {
  type        = string
  description = "es_subnet_group_name"
  default     = "tf-test-cache-subnet"
}

variable "subnet_ids" {
  type    = list(any)
  default = [""]
}
