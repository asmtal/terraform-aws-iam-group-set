<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_this"></a> [this](#module\_this) | r0ck40k/iam-group/aws | 0.1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy_document.user_mfa](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_context"></a> [context](#input\_context) | Default environmental context | <pre>object({<br>    organization = string<br>    environment  = string<br>    account      = string<br>    product      = string<br>    tags         = map(string)<br>  })</pre> | n/a | yes |
| <a name="input_groups"></a> [groups](#input\_groups) | Map of groups to create | <pre>map(object({<br>    allowed_roles    = list(string)<br>    policy_documents = list(string)<br>    require_mfa      = bool<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | output as map from module r0ck40k/iam-group/aws |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- markdownlint-disable -->
<!-- prettier-ignore-end -->
