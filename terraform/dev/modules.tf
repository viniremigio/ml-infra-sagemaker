module "sagemaker" {
  source = "../modules/sagemaker"
  notebook_bucket =  var.notebook_bucket
  env = "dev"
}

variable "notebook_bucket" {}
