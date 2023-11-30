variable "policy_name" {
  description = "The name of the role policy"
  type        = string
  default     = "example_policy"
}

variable "role_name" {
  description = "The name of the role"
  type        = string
  default     = "example_role"
}

variable "policy" {
  description = "The policy document"
  type        = string
  default     = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "s3:ListAllMyBuckets",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

variable "assume_role_policy" {
  description = "The policy that grants an entity permission to assume the role"
  type        = string
  default     = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

variable "enable_inline_policy" {
  description = "Whether to enable the inline policy"
  type        = bool
  default     = true
}

variable "enable_managed_policy_arns" {
  description = "Whether to enable the managed policy ARNs"
  type        = bool
  default     = true
}

variable "managed_policy_arns" {
  description = "The managed policy ARNs"
  type        = list(string)
  default     = []
}
