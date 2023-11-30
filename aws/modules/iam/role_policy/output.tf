output "role_policy_name" {
  description = "The name of the role policy"
  value       = aws_iam_role_policy.this.name
}

output "role_policy_id" {
  description = "The role policy's ID"
  value       = aws_iam_role_policy.this.id
}

output "role_policy_role" {
  description = "The role the policy applies to"
  value       = aws_iam_role_policy.this.role
}

output "role_name" {
  description = "The name of the role"
  value       = aws_iam_role.this.name
}

output "role_unique_id" {
  description = "The stable and unique string identifying the role"
  value       = aws_iam_role.this.unique_id
}
