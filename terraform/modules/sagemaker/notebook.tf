resource "aws_sagemaker_notebook_instance" "notebook" {
  instance_type = "ml.t2.medium"
  name = "sagemaker-terraform-instance"
  role_arn = aws_iam_role.sagemaker_terraform_notebook_role.arn

  tags = {
    Name = "sagemaker-terraform-test"
  }
}

resource "aws_iam_role" "sagemaker_terraform_notebook_role" {
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [{
      "Action": "sts:AssumeRole",
      "Principal": {
          "Service": "sagemaker.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
  }]
}
  EOF
}

resource "aws_iam_role_policy" "sagemaker_terraform_notebook_policy" {
  name = "sagamaker_terraform_notebook_policy"
  role = aws_iam_role.sagemaker_terraform_notebook_role.id
  policy = <<EOF
{
	"Version": "2012-10-17",
	"Statement": [{
			"Action": [
				"s3:ListBucket"
			],
			"Effect": "Allow",
			"Resource": [
				"arn:aws:s3:::${var.notebook_bucket}"
			]
		},
		{
			"Action": [
				"s3:GetObject",
				"s3:PutObject",
				"s3:DeleteObject"
			],
			"Effect": "Allow",
			"Resource": [
				"arn:aws:s3:::${var.notebook_bucket}/*"
			]
		}
	]
}
EOF
}

