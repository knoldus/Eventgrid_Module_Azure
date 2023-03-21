variable "environmentKey" {
  type        = string
  default     = "Dev"
}

variable "topic_name" {
  type        = string
}

variable "location" {
  type        = string
}

variable "resource_group_name" {
  type        = string
}

variable "identity_type" {
  type        = string
  default     = "system_assigned"
  validation {
    condition = can(regex("System_assigned|user_assigned$",var.identity_type))
    error_message = "identity type must be either system assigned or user assigned"
  }
}
