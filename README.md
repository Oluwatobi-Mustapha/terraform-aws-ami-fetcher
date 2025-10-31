# Terraform AWS EC2 Deployment (Amazon Linux 2023 ARM64)

This project demonstrates how to use Terraform’s `aws_ami` data source to automatically fetch the **latest Amazon Linux 2023 AMI** and launch a matching EC2 instance.

##  What this project does
- Uses `data "aws_ami"` to always pick the newest AMI version.
- Filters for the **arm64** architecture.
- Launches a lightweight **t4g.micro** instance.

##  How to Run
```bash
terraform init
terraform plan
terraform apply
```
# Results

- Terraform fetched the latest Amazon Linux 2023 ARM64 image.

- Created a t4g.micro EC2 instance successfully in us-east-1.

- Verified on the AWS console (see screenshots below).


![7615EF31-E304-4AA5-B95F-1CF8C299B287_1_201_a](https://github.com/user-attachments/assets/2b9d3cf6-c3bc-4fc5-b23a-1de781aa61c1)

![69E1D48C-9736-4BDB-AED1-37A9B118D489_1_201_a](https://github.com/user-attachments/assets/2528de0f-831e-4f36-95fe-c8b50551aa5e)


# Cleanup
```bash
terraform destroy -auto-approve
```
