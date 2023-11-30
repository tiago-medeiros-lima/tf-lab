resource "aws_iam_role" "example" {
  name = var.role_name

  assume_role_policy = var.assume_role_policy

  dynamic "inline_policy" {
    for_each = var.enable_inline_policy ? [1] : []
    content {
      name   = var.policy_name
      policy = var.policy
    }
  }

  managed_policy_arns = var.enable_managed_policy_arns ? var.managed_policy_arns : []
}
