variable "region" {
  type    = string
  default = "us-west-1"
}

variable "profile" {
  type    = string
  default = "default"
}

variable "staging_environment" {
  type = string
  default = "dev"
}

variable "ami" {
  type    = string
  description = "ami used for ec2 instance"
  default = "ami-830c94e3"
}