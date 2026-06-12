variable "project_name" {
  default = "portfolio-devops"
}

variable "my_ip" {
  description = "IP publico autorizado para acesso SSH"
  type        = string
}

variable "key_name" {
  description = "portfolio-key"
  type        = string
}
