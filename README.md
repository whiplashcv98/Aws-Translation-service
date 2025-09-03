# AWS Translation Service - Infrastructure as Code

A comprehensive Infrastructure-as-Code (IaC) solution for automated language translation using AWS services including Terraform, AWS Translate, Amazon S3, Lambda, and Python with Boto3.

##  Architecture Overview

```
┌─────────────────┐    ┌──────────────────┐    ┌─────────────────┐
│   Input S3      │    │   Lambda         │    │   Output S3     │
│   Bucket        │───▶│   Function       │───▶│   Bucket        │
│                 │    │                  │    │                 │
│ JSON files      │    │ Translation      │    │ Translated      │
│ with requests   │    │ Processing       │    │ Results         │
└─────────────────┘    └──────────────────┘    └─────────────────┘
                                │
                                ▼
                       ┌──────────────────┐
                       │   AWS Translate  │
                       │   Service        │
                       └──────────────────┘
```

##  Features

- **Infrastructure as Code**: Complete AWS infrastructure defined in Terraform
- **Automated Processing**: Lambda functions triggered by S3 events
- **Language Translation**: Integration with AWS Translate service
- **Python SDK**: Comprehensive Python library using Boto3

##  Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform >= 1.0
- Python 3.8+
- zip utility for Lambda packaging
