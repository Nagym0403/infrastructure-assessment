variable "vpc_cidr" {
  type = string
}

variable "azs" {
  type = list(string)

  validation {
    condition     = length(var.azs) == 2 && length(distinct(var.azs)) == 2
    error_message = "exactly 2 unique AZs are required."
  }
}

variable "public_subnet_cidrs" {
  type = list(string)

  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "exactly 2 public subnet CIDRs are required."
  }
}

variable "private_subnet_cidrs" {
  type = list(string)

  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "exactly 2 private subnet CIDRs are required."
  }
}
