variable "policy_name" {
  description = "The name of the role policy"
  type        = string
  default     = "this_policy"
}

variable "role_name" {
  description = "The name of the role"
  type        = string
  default     = "this_role"
}

variable "policy" {
  description = "The policy document"
  type        = string
  default     = jsonencode(file("../../../policies/policy/s3_list_all_buckets.json"))
}

variable "assume_role_policy" {
  description = "The policy that grants an entity permission to assume the role"
  type        = string
  default     = jsonencode(file("../../../json/assume_role/ec2.json"))
}
