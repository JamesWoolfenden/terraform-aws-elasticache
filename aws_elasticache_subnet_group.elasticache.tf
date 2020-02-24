resource "aws_elasticache_subnet_group" "elasticache" {
  name       = "tf-test-cache-subnet"
  subnet_ids = [aws_subnet.foo.id]
}
