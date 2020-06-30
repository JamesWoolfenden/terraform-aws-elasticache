resource "aws_elasticache_subnet_group" "elasticache" {
  name       = var.es_subnet_group_name
  subnet_ids = var.subnet_ids
}

variable "es_subnet_group_name" {
  type        = string
  description = "es_subnet_group_name"
  default     = "tf-test-cache-subnet"
}

variable "subnet_ids" {
  type    = list
  default = [""]
}
