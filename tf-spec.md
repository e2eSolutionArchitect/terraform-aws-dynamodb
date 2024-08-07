## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attr_type"></a> [attr\_type](#input\_attr\_type) | DynamoDB attribute type | `string` | `"S"` | no |
| <a name="input_attributes"></a> [attributes](#input\_attributes) | DynamoDB attribute name | `list(map(string))` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS infrastructure regio | `string` | `null` | no |
| <a name="input_billing_mode"></a> [billing\_mode](#input\_billing\_mode) | DynamoDB billing mode | `string` | `"PAY_PER_REQUEST"` | no |
| <a name="input_db_table_name"></a> [db\_table\_name](#input\_db\_table\_name) | DynamoDB table name | `string` | `null` | no |
| <a name="input_hash_key"></a> [hash\_key](#input\_hash\_key) | DynamoDB hash key | `string` | `"LockId"` | no |
| <a name="input_is_deletion_protection_enabled"></a> [is\_deletion\_protection\_enabled](#input\_is\_deletion\_protection\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_is_point_in_time_recovery_enabled"></a> [is\_point\_in\_time\_recovery\_enabled](#input\_is\_point\_in\_time\_recovery\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_is_server_side_encryption_enabled"></a> [is\_server\_side\_encryption\_enabled](#input\_is\_server\_side\_encryption\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_is_ttl_enabled"></a> [is\_ttl\_enabled](#input\_is\_ttl\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_range_key"></a> [range\_key](#input\_range\_key) | DynamoDB range\_key | `string` | n/a | yes |
| <a name="input_read_capacity"></a> [read\_capacity](#input\_read\_capacity) | DynamoDB read\_capacity | `number` | n/a | yes |
| <a name="input_server_side_encryption_kms_key_arn"></a> [server\_side\_encryption\_kms\_key\_arn](#input\_server\_side\_encryption\_kms\_key\_arn) | DynamoDB server\_side\_encryption\_kms\_key\_arn | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tag map for the resource | `map(string)` | `{}` | no |
| <a name="input_ttl_attribute_name"></a> [ttl\_attribute\_name](#input\_ttl\_attribute\_name) | DynamoDB ttl\_attribute\_name | `string` | n/a | yes |
| <a name="input_write_capacity"></a> [write\_capacity](#input\_write\_capacity) | DynamoDB write\_capacity | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | s3 aws\_dynamodb\_table arn |
| <a name="output_id"></a> [id](#output\_id) | s3 aws\_dynamodb\_table id |
