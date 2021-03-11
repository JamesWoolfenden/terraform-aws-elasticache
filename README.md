# terraform-aws-elasticache

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-elasticache/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-elasticache)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-elasticache.svg)](https://github.com/JamesWoolfenden/terraform-aws-elasticache/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-elasticache.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-elasticache/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-elasticache/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-elasticache&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-elasticache/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-elasticache&benchmark=INFRASTRUCTURE+SECURITY)

---

Terraform module to create an elasticache, each gateway will have different resources hanging off it so its more of an example than a module. It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is just a very basic example.

![alt text](./diagram/serverless.png)

Include this repository as a module in your existing Terraform code:

```hcl
module "elasticache" {
  source                 = "jameswoolfenden/elasticache/aws"
  common_tags            = var.common_tags
}
```

memcache vert scaling is destructive

- just changing and reapply instance type
memcache scale out is adding nodes
- can it be automated?

Memcache
multi threaded, scale out if loads >90&
scale up and out

redis single thread
scale at 90/no of cores=??

alarm/ monitoring
CPU utilisation
concurrent connections
swapusage
evictions

create a memcache
create a redis

with scaling?
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_elasticache_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_cluster) |
| [aws_elasticache_parameter_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_parameter_group) |
| [aws_elasticache_replication_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_replication_group) |
| [aws_elasticache_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_security_group) |
| [aws_elasticache_subnet_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_subnet_group) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| auth\_token | (optional) describe your variable | `string` | n/a | yes |
| cluster | n/a | `map(any)` | <pre>{<br>  "cluster_id": "cluster-example",<br>  "engine": "memcached",<br>  "node_type": "cache.m4.large",<br>  "num_cache_nodes": 2,<br>  "parameter_group_name": "default.memcached1.4",<br>  "port": 11211<br>}</pre> | no |
| common\_tags | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| es\_security\_group\_names | elasticache-security-group | `string` | `"elasticache-security-group"` | no |
| es\_subnet\_group\_name | es\_subnet\_group\_name | `string` | `"tf-test-cache-subnet"` | no |
| replication\_group | n/a | `map` | <pre>{<br>  "automatic_failover_enabled": true,<br>  "availability_zones": [<br>    "us-west-2a",<br>    "us-west-2b"<br>  ],<br>  "node_type": "cache.m4.large",<br>  "number_cache_clusters": 2,<br>  "parameter_group_name": "default.redis3.2",<br>  "port": 6379,<br>  "replication_group_description": "test description",<br>  "replication_group_id": "tf-rep-group-1"<br>}</pre> | no |
| security\_group\_names | elasticache-security-group | `string` | `"default"` | no |
| subnet\_ids | n/a | `list(any)` | <pre>[<br>  ""<br>]</pre> | no |

## Outputs

No output.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-codecommit](https://github.com/jameswoolfenden/terraform-aws-elasticache) - Storing ones code

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-elasticache/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-elasticache/issues) to report any bugs or file feature requests.

## Copyrights

Copyright � 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-elasticache&url=https://github.com/jameswoolfenden/terraform-aws-elasticache
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-elasticache&url=https://github.com/jameswoolfenden/terraform-aws-elasticache
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-elasticache
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-elasticache
[share_email]: mailto:?subject=terraform-aws-elasticache&body=https://github.com/jameswoolfenden/terraform-aws-elasticache
