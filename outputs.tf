

output "id" {
  value       = aws_dynamodb_table.this.id
  description = "s3 aws_dynamodb_table id"
}

output "arn" {
  value       = aws_dynamodb_table.this.arn
  description = "s3 aws_dynamodb_table arn"
}