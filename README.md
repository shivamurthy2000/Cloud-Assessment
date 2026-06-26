# Cloud Assessment – AWS Infrastructure Deployment using Terraform

## Overview

This project demonstrates the deployment of a simple Flask web application on AWS using **Terraform** as Infrastructure as Code (IaC). The infrastructure is deployed within a custom Virtual Private Cloud (VPC), and GitHub Actions is configured to automatically validate the Terraform configuration whenever changes are pushed to the repository.

The objective of this project is to showcase cloud infrastructure provisioning, networking, infrastructure automation, and version control best practices.



# Project Objectives

* Provision AWS infrastructure using Terraform.
* Create a custom VPC and networking components.
* Launch an EC2 instance in a public subnet.
* Configure Security Groups for SSH and HTTP access.
* Deploy a Flask web application.
* Automate Terraform validation using GitHub Actions.



# AWS Architecture

The infrastructure consists of the following AWS resources:

* Custom VPC
* Public Subnet
* Internet Gateway
* Route Table
* Route Table Association
* Security Group
* EC2 Instance
* Flask Web Application

The architecture diagram is available in **architecture.png**.



# Technologies Used

* AWS EC2
* AWS VPC
* AWS IAM
* Terraform
* Python
* Flask
* Git
* GitHub
* GitHub Actions
* Ubuntu Linux


# Repository Structure

```text
cloud-assessment/
│
├── app.py
├── requirements.txt
├── README.md
├── architecture.png
│
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── network.tf
│   ├── security.tf
│   ├── main.tf
│   └── outputs.tf
│
└── .github/
    └── workflows/
        └── terraform.yml
```



# Infrastructure Provisioned

Terraform provisions the following AWS resources:

* VPC
* Public Subnet
* Internet Gateway
* Route Table
* Route Table Association
* Security Group
* EC2 Instance



# Deployment Steps

## 1. Clone Repository

```bash
git clone <repository-url>
cd cloud-assessment
```

## 2. Configure AWS CLI

```bash
aws configure
```

Provide:

* AWS Access Key ID
* AWS Secret Access Key
* Region (ap-south-1)
* Output format (json)



## 3. Initialize Terraform

```bash
terraform init
```



## 4. Validate Configuration

```bash
terraform validate
```



## 5. Review Execution Plan

```bash
terraform plan
```



## 6. Deploy Infrastructure

```bash
terraform apply
```

Type:

```text
yes
```

to create the infrastructure.



# Flask Application

Install the required dependencies:

```bash
pip install -r requirements.txt
```

Run the application:

```bash
python app.py
```

The application can then be accessed using the EC2 instance's public IP address.


# GitHub Actions

A GitHub Actions workflow has been configured to automatically execute the following on every push to the **main** branch and on pull requests:

* Terraform Init
* Terraform Format Check
* Terraform Validate
* Terraform Plan

Workflow file:

```text
.github/workflows/terraform.yml
```



# Security Configuration

The Security Group allows:

 Port | Protocol | Purpose 
 22   | TCP      | SSH     
 80   | TCP      | HTTP   # Cloud Assessment – AWS Infrastructure Deployment using Terraform

## Overview

This project demonstrates the deployment of a simple Flask web application on AWS using **Terraform** as Infrastructure as Code (IaC). The infrastructure is deployed within a custom Virtual Private Cloud (VPC), and GitHub Actions is configured to automatically validate the Terraform configuration whenever changes are pushed to the repository.

The objective of this project is to showcase cloud infrastructure provisioning, networking, infrastructure automation, and version control best practices.


# Project Objectives

* Provision AWS infrastructure using Terraform.
* Create a custom VPC and networking components.
* Launch an EC2 instance in a public subnet.
* Configure Security Groups for SSH and HTTP access.
* Deploy a Flask web application.
* Automate Terraform validation using GitHub Actions

# AWS Architecture

The infrastructure consists of the following AWS resources:

* Custom VPC
* Public Subnet
* Internet Gateway
* Route Table
* Route Table Association
* Security Group
* EC2 Instance
* Flask Web Application

The architecture diagram is available in **architecture.png**.



# Technologies Used

* AWS EC2
* AWS VPC
* AWS IAM
* Terraform
* Python
* Flask
* Git
* GitHub
* GitHub Actions
* Ubuntu Linux



# Repository Structure

```text
cloud-assessment/
│
├── app.py
├── requirements.txt
├── README.md
├── architecture.png
│
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── network.tf
│   ├── security.tf
│   ├── main.tf
│   └── outputs.tf
│
└── .github/
    └── workflows/
        └── terraform.yml
```



# Infrastructure Provisioned

Terraform provisions the following AWS resources:

* VPC
* Public Subnet
* Internet Gateway
* Route Table
* Route Table Association
* Security Group
* EC2 Instance



# Deployment Steps

## 1. Clone Repository

```bash
git clone <repository-url>
cd cloud-assessment
```

## 2. Configure AWS CLI

```bash
aws configure
```

Provide:

* AWS Access Key ID
* AWS Secret Access Key
* Region (ap-south-1)
* Output format (json)



## 3. Initialize Terraform

```bash
terraform init
```



## 4. Validate Configuration

```bash
terraform validate
```



## 5. Review Execution Plan

```bash
terraform plan
```



## 6. Deploy Infrastructure

```bash
terraform apply
```

Type:

```text
yes
```

to create the infrastructure.


# Flask Application

Install the required dependencies:

```bash
pip install -r requirements.txt
```

Run the application:

```bash
python app.py
```

The application can then be accessed using the EC2 instance's public IP address.


# GitHub Actions

A GitHub Actions workflow has been configured to automatically execute the following on every push to the **main** branch and on pull requests:

* Terraform Init
* Terraform Format Check
* Terraform Validate
* Terraform Plan

Workflow file:

#text
.github/workflows/terraform.yml


# Security Configuration

The Security Group allows:

Port | Protocol | Purpose 
  22     TCP        SSH     
  80     TCP        HTTP    

AWS credentials used by GitHub Actions are stored securely as GitHub Repository Secrets.



# Challenges Faced

During the implementation, the following issues were encountered and resolved:

* Resolved Terraform syntax errors during formatting.
* Fixed missing Terraform variable declarations.
* Updated the EC2 instance type to a Free Tier eligible instance.
* Configured GitHub SSH authentication.
* Installed and configured AWS CLI.
* Verified Terraform configuration before deployment.


# Future Enhancements

* Store Terraform state remotely in Amazon S3.
* Enable state locking with DynamoDB.
* Automate application deployment through GitHub Actions.
* Configure HTTPS using an Application Load Balancer and ACM.
* Add monitoring with Amazon CloudWatch.

---

# Author

**Sachin Shivary**

Cloud Engineer Assessment Submission


AWS credentials used by GitHub Actions are stored securely as GitHub Repository Secrets.



# Challenges Faced

During the implementation, the following issues were encountered and resolved:

* Resolved Terraform syntax errors during formatting.
* Fixed missing Terraform variable declarations.
* Updated the EC2 instance type to a Free Tier eligible instance.
* Configured GitHub SSH authentication.
* Installed and configured AWS CLI.
* Verified Terraform configuration before deployment.



# Author

**Shivamurthy CE **

Cloud Engineer Assessment Submission
