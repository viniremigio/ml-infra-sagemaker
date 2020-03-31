module "sagemaker" {
  source = "./modules/sagemaker"
  notebook_bucket =  var.notebook_bucket

}

variable "notebook_bucket" {}
