# Terraform AWS Infrastructure Module

This repository provides reusable Terraform modules to provision scalable and highly available AWS infrastructure. The setup includes:

- **S3 Bucket** and **DynamoDB Table** for Terraform state management.
- An **EC2 cluster** with customizable configurations for development or production workloads.

## Features

- **State Management**:
  - S3 bucket for storing Terraform state files.
  - DynamoDB table for state locking to ensure safe concurrent usage.
- **EC2 Cluster**:
  - Deploys multiple EC2 instances with specified instance types, key pairs, and networking configurations.
  - Fully configurable with security groups, VPC, and subnets.


##Disclaimer & License

  - This `README.md` provides clear documentation for using your Terraform module, including inputs, outputs, and step-by-step deployment instructions. Let me know if you need further clarification or customization!
This project is licensed under the MIT License. See LICENSE for details.  - Fully configurable with security groups, VPC, and subnets.

---

## Directory Structure

```plaintext
terraform-aws-infra/
├── main.tf         # Main Terraform configuration
├── variables.tf    # Input variables
├── outputs.tf      # Output values
├── modules/
│   ├── s3-backend/  # S3 and DynamoDB setup for state management
│   ├── ec2-cluster/ # EC2 cluster setup
└── README.md        # Documentation

