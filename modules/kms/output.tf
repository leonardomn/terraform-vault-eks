output "arn" {
  description = "The Amazon Resource Name (ARN) of the key."
  value       = aws_kms_key.main.arn
}

output "key_id" {
  description = "The globally unique identifier for the key."
  value       = aws_kms_key.main.key_id
}