## ---------------------------------------------------------------------------------------------------------------------
## MODULE PARAMETERS
## These variables are expected to be passed in by the operator
## ---------------------------------------------------------------------------------------------------------------------

variable "role_name" {
  type        = string
  description = "Service Account Role Name"
}

variable "security_group_name" {
  type        = string
  description = "Security Group Name"
}

variable "application_display_name" {
  type        = string
  description = "Service Account AD Application Name"
}

## ---------------------------------------------------------------------------------------------------------------------
## OPTIONAL PARAMETERS
## These variables have defaults and may be overridden
## ---------------------------------------------------------------------------------------------------------------------

variable "roles_list" {
  type        = list(string)
  description = "List of Permitted Service Account Roles"
  default     = []
}

variable "client_secret_expiration" {
  type        = string
  description = "Service Account Secret Relative Expiration from Creation"
  default     = "169h"
}

variable "tags" {
  description = "Azure Resource Tag(s)"
  default     = {}
}