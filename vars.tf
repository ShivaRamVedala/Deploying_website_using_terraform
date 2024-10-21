variable "REGION" {
  default = "us-east-1"
}

variable "USER" {
  default = "ec2-user"
}

variable "ZONE1" {
  default = "us-east-1a"

}

variable "ZONE2" {
  default = "us-east-1b"

}

variable "ZONE3" {
  default = "us-east-1c"

}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-06b21ccaeff8cd686"
    us-east-2 = "ami-050cd642fd83388e4"
  }
}