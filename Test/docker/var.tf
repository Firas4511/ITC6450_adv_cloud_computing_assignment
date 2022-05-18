variable "ssh_key_name" {
  type = string
  default = "key1123"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_id" {
  type    = string
  default = "ami-0ca285d4c2cda3300"
}

variable "port_http" {
  type    = string
  default = "8080"
}

variable "port_ssh" {
  type    = string
  default = "22"
}