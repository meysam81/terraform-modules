## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | < 2 |
| <a name="requirement_github"></a> [github](#requirement\_github) | < 7 |
| <a name="requirement_random"></a> [random](#requirement\_random) | < 4 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | < 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | < 7 |
| <a name="provider_random"></a> [random](#provider\_random) | < 4 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | < 5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_deploy_key.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_deploy_key) | resource |
| [github_repository_file.ci](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [github_repository_file.renovate_config](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [random_pet.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |
| [tls_private_key.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_algorithm"></a> [algorithm](#input\_algorithm) | n/a | `string` | `"RSA"` | no |
| <a name="input_commit_email"></a> [commit\_email](#input\_commit\_email) | n/a | `string` | `"github-actions[bot]@users.noreply.github.com"` | no |
| <a name="input_commit_name"></a> [commit\_name](#input\_commit\_name) | n/a | `string` | `"Kubernetes Cluster"` | no |
| <a name="input_github_owner"></a> [github\_owner](#input\_github\_owner) | n/a | `string` | n/a | yes |
| <a name="input_rsa_bits"></a> [rsa\_bits](#input\_rsa\_bits) | n/a | `number` | `4096` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deploy_private_key"></a> [deploy\_private\_key](#output\_deploy\_private\_key) | n/a |
| <a name="output_github_pages_url"></a> [github\_pages\_url](#output\_github\_pages\_url) | n/a |
| <a name="output_repo_name"></a> [repo\_name](#output\_repo\_name) | n/a |
| <a name="output_repository_ssh_url"></a> [repository\_ssh\_url](#output\_repository\_ssh\_url) | n/a |
