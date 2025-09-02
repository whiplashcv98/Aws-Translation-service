# Infrastructure-as-Code (IaC) solution on AWS

This project provides an Infrastructure-as-Code (IaC) solution using Terraform to automate language translation with AWS Translate and store objects in Amazon S3.

## Project Overview

The project consists of the following components:

- **main.tf**: The main Terraform configuration file that defines the AWS provider, S3 buckets for requests and responses, lifecycle policies, IAM roles and policies for AWS Lambda, the Lambda function configuration, and S3 bucket notifications.

- **variables.tf**: This file defines input variables for the Terraform configuration, allowing for parameterization and making the configuration more flexible and reusable.

- **outputs.tf**: This file specifies the outputs of the Terraform configuration, detailing what information should be displayed after the infrastructure is created, such as the ARNs of the created resources.

- **lambda/lambda_function.py**: This file contains the Python code for the AWS Lambda function, implementing the logic for processing requests and utilizing AWS Translate for language translation.

## Setup Instructions

1. **Prerequisites**:
   - Ensure you have Terraform installed on your machine.
   - Configure your AWS credentials to allow Terraform to create resources in your AWS account.

2. **Clone the Repository**:
   - Clone this repository to your local machine.

3. **Navigate to the Project Directory**:
   - Change into the project directory:
     ```
     cd iac-aws-translate-s3
     ```

4. **Initialize Terraform**:
   - Run the following command to initialize the Terraform configuration:
     ```
     terraform init
     ```

5. **Plan the Deployment**:
   - Generate an execution plan to see what resources will be created:
     ```
     terraform plan
     ```

6. **Apply the Configuration**:
   - Apply the Terraform configuration to create the resources:
     ```
     terraform apply
     ```

7. **Usage**:
   - Upload JSON files to the `clements-translate-requests` S3 bucket to trigger the Lambda function for translation.
   - The translated results will be stored in the `clements-translate-responses` S3 bucket.

## Additional Information

- For any issues or contributions, please refer to the project's issue tracker.
- Ensure to clean up resources after use to avoid incurring costs by running:
  ```
  terraform destroy
  ```