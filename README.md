# Sagemaker infrastructure

**Goal**: Create a straightforward template to instantiate Sagemaker as a MLOps platform

## S3 Backend

You first need to create a S3 bucket and then reference it in *backend.tf*

```
mv terraform_backend.template backend.tf
```

## TODO

- Instantiate a Sagemaker Notebook with Terraform **[OK]**
- Create a model deploy package
- Integrate with an example of ML package
- Create a training task
- Create under VPC