resource "aws_kms_key" "main" {
  description = format("Vault KMS key for %s-%s", var.project_name, var.env_name)
}