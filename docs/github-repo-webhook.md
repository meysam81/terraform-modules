## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | < 2 |
| <a name="requirement_github"></a> [github](#requirement\_github) | < 7 |
| <a name="requirement_random"></a> [random](#requirement\_random) | < 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 6.4.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_repository_webhook.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_webhook) | resource |
| [random_password.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_content_type"></a> [content\_type](#input\_content\_type) | The content type of the webhook | `string` | `"json"` | no |
| <a name="input_events"></a> [events](#input\_events) | The events to trigger the webhook | `list(string)` | <pre>[<br/>  "push"<br/>]</pre> | no |
| <a name="input_repository"></a> [repository](#input\_repository) | The repository to add the webhook to | `string` | n/a | yes |
| <a name="input_secret_length"></a> [secret\_length](#input\_secret\_length) | The length of the webhook secret string | `number` | `32` | no |
| <a name="input_secret_phrase"></a> [secret\_phrase](#input\_secret\_phrase) | The secret phrase to use for the webhook secret (default: auto-generated) | `string` | `""` | no |
| <a name="input_special"></a> [special](#input\_special) | Whether to include special characters in the secret | `bool` | `false` | no |
| <a name="input_webhook_url"></a> [webhook\_url](#input\_webhook\_url) | The URL to send the webhook to | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secret_value"></a> [secret\_value](#output\_secret\_value) | n/a |
