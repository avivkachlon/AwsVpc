# AWS VPC and Subnets Terraform Project

This Terraform project automates the creation of an AWS Virtual Private Cloud (VPC) and two subnets. It allows you to define your network infrastructure using Terraform scripts, making it easy to manage and version your AWS environment.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Resources Created](#resources-created)
- [Usage](#usage)
- [Inputs](#inputs)
- [Outputs](#outputs)
- [License](#license)

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed (version >= 0.12)
- AWS account and proper IAM credentials configured with sufficient permissions to create VPCs and subnets
- AWS CLI configured or environment variables set for access and secret keys

## Project Structure
├── main.tf # Main Terraform configuration ├── variables.tf # Input variable definitions ├── outputs.tf # Output definitions for the created resources ├── provider.tf # AWS provider configuration └── README.md # Project documentation

### File Descriptions:

- **main.tf**: Contains the core infrastructure code for creating the VPC and subnets.
- **variables.tf**: Defines the input variables used in the Terraform configurations.
- **outputs.tf**: Specifies the output variables to capture information about the created resources (e.g., VPC ID, Subnet IDs).
- **provider.tf**: Specifies the provider (AWS) and region where the infrastructure will be created.

## Resources Created

This project creates the following resources in AWS:

- **VPC**: A new VPC with a user-specified CIDR block.
- **Subnets**: Two subnets (one public and one private) within the created VPC, each in a different availability zone.

## Usage

### Step 1: Clone the repository

``bash
git clone <repository-url>
cd AwsVpc

### Step 2: Initialize the Terraform working directory
terraform init

### Step 3: Customize variables
#### You can customize the variables either by modifying the variables.tf file or by creating a terraform.tfvars file and overriding the defaults.
vpc_cidr = "10.0.0.0/16"
subnet1_cidr = "10.0.1.0/24"
subnet2_cidr = "10.0.2.0/24"
region = "us-west-2"

### Step 4: Apply the configuration
terraform apply
