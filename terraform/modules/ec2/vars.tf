# Variables are static and datasources are dynamic. They can pull information from a remote API
variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-04ac550b78324f651"
  }
}