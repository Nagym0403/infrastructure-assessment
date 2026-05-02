variable "aws_region" {
  type        = string
  default     = null
}

variable "bucket_name" {
  type        = string
  default     = "backups"
}

variable "uploader_role_arn" {
  type        = string
  default     = "arn:aws:iam::123456789012:role/backup_uploader"
}