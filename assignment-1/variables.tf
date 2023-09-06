variable "default_tags" {
  type    = map(string)
  default = {}
}

variable "instance_ami" {
  type = string
}

variable "instance_type" {
  type = string
}
