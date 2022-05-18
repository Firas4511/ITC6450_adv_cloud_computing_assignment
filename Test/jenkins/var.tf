
variable "region" {
  type    = string
  default = "us-west-2"
}

variable "ssh_key_name" {
  type = string
  default = "key"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "port_http" {
  type    = string
  default = "8080"
}

variable "port_ssh" {
  type    = string
  default = "22"
}