variable "AWS_REGION" {
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-04ac550b78324f651"
  }
}