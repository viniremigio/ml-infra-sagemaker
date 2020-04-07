# SageMaker infrastructure

**Goal**: Create a straightforward template to provision **AWS SageMaker** using infrastructure as Code

## S3 Backend

You first need to create a S3 bucket and then reference it in *backend.tf* file:

```
mv terraform_backend.template dev/backend.tf
```

## TODO

- :white_check_mark: Provision a Sagemaker Notebook with Terraform
- Get Jupyter notebook and related files from S3: aws s3 cp notebook resources to notebook folder (SageMaker lifecycle)
- Create a model deploy package
- Integrate with an example of ML package
- Create a training task
- Create resources under VPC