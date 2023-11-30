output "role_name" {
  description = "The name of the role"
  value       = aws_iam_role.example.name
}

output "role_unique_id" {
  description = "The stable and unique string identifying the role"
  value       = aws_iam_role.example.unique_id
}

output "role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the role"
  value       = aws_iam_role.example.arn
}

output "role_create_date" {
  description = "The creation date of the IAM role"
  value       = aws_iam_role.example.create_date
}

output "role_inline_policy" {
  description = "The inline policy associated with the IAM role"
  value       = aws_iam_role.example.inline_policy
}

output "role_managed_policy_arns" {
  description = "The managed policy ARNs attached to the IAM role"
  value       = aws_iam_role.example.managed_policy_arns
}
