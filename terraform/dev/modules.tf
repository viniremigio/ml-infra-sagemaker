module "sagemaker" {
  source = "../modules/sagemaker"
  notebook_bucket =  var.notebook_bucket
  env = "dev"
}

module "s3" {
  source = "../modules/s3"
  notebook_bucket =  var.notebook_bucket
  env = "dev"
}

variable "notebook_bucket" {}
