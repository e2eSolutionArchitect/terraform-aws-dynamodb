# -------------------------------------------
# Common Variables
# -------------------------------------------

variable "aws_region" {
  description = "AWS infrastructure regio"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tag map for the resource"
  type        = map(string)
  default     = {}
}


# -------------------------------------------
# DynamoDB Variables
# -------------------------------------------

variable "db_table_name" {
  description = "DynamoDB table name"
  type        = string
  default     = null
}


variable "billing_mode" {
  description = "DynamoDB billing mode"
  type        = string
  default     = "PAY_PER_REQUEST" # or "PROVISIONED"
}

variable "hash_key" {
  description = "DynamoDB hash key"
  type        = string
  default     = "LockId"
}

variable "range_key" {
  description = "DynamoDB range_key"
  type        = string
}

variable "server_side_encryption_kms_key_arn" {
  description = "DynamoDB server_side_encryption_kms_key_arn"
  type        = string
}

variable "ttl_attribute_name" {
  description = "DynamoDB ttl_attribute_name"
  type        = string
}

variable "attributes" {
  description = "DynamoDB attribute name"
  type        = list(map(string))
}

variable "attr_type" {
  description = "DynamoDB attribute type"
  type        = string
  default     = "S"
}

variable "is_point_in_time_recovery_enabled" {
  type    = bool
  default = false
}

variable "is_ttl_enabled" {
  type    = bool
  default = false
}

variable "is_server_side_encryption_enabled" {
  type    = bool
  default = true
}

variable "is_deletion_protection_enabled" {
  type    = bool
  default = false
}


variable "read_capacity" {
  description = "DynamoDB read_capacity"
  type        = number
}

variable "write_capacity" {
  description = "DynamoDB write_capacity"
  type        = number
}