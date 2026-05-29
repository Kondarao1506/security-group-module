variable "project" { #roboshop
  type = string
}

variable "environment" { #dev
  type = string
}

variable "component" {
  type = list
}

variable "vpc_id" {
  type = string
}