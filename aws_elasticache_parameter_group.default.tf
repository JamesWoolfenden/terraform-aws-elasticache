resource "aws_elasticache_parameter_group" "default" {
  name   = var.parameter_group.name
  family = var.parameter_group.family

  parameter {
    name  = "activerehashing"
    value = "yes"
  }

  parameter {
    name  = "min-slaves-to-write"
    value = "2"
  }
}
