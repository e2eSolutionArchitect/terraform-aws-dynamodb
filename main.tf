resource "aws_dynamodb_table" "this" {
  name                        = var.db_table_name
  billing_mode                = var.billing_mode
  hash_key                    = var.hash_key
  range_key                   = var.range_key
  deletion_protection_enabled = var.is_deletion_protection_enabled
  read_capacity               = var.read_capacity
  write_capacity              = var.write_capacity

  dynamic "attribute" {
    for_each = var.attributes
    content {
      name = attribute.value.name
      type = attribute.value.type
    }
  }

  point_in_time_recovery {
    enabled = var.is_point_in_time_recovery_enabled
  }

  ttl {
    enabled        = var.is_ttl_enabled
    attribute_name = var.ttl_attribute_name
  }

  server_side_encryption {
    enabled     = var.is_server_side_encryption_enabled
    kms_key_arn = var.server_side_encryption_kms_key_arn
  }


  tags = merge({ "ResourceName" = var.db_table_name }, var.tags)
}