resource "aws_s3_bucket" "sagemaker_notebook_bucket" {

  bucket = var.notebook_bucket
  acl = "private"
  force_destroy = true

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    env = var.env
  }

}

resource "aws_s3_bucket_object" "upload_notebooks" {
  bucket = aws_s3_bucket.sagemaker_notebook_bucket.id
  key = "sagemaker/notebooks/housing_price.ipynb"
  source = "${path.module}/../../../source/notebooks/housing_price.ipynb"
}