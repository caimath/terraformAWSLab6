# terraformAWSLab6

## Schema

![Project schema](img/schemaProjet.png)

## To do

- [x] VPC (Subnets, availability zones)
- [x] Internet Gateway
- [x] Nat Gateway
- [x] Web server (create, sg, user data)
- [x] Route table to internet
- [x] Route table private subnet to nat gateway
- [x] RDS Primary (create and sg)
- [ ] RDS Secondary (Not possible with student account)

## Credentials

- Modify aws credentials on windows: `notepad "$env:USERPROFILE\.aws\credentials"`
- Générer clé SSH: `ssh-keygen -t rsa -b 4096 -f web-server-key`

## Project Structure

```bash
.
├── data.tf
├── main.tf
├── outputs.tf
├── secrets.tfvars
├── terraform.tfstate
├── terraform.tfvars
├── variables.tf
```

- data.tf: defines data sources used by Terraform (AMIs)
- main.tf: declares primary resources (networking, instances, SGs, routes)
- variables.tf: declares input variables (types, default values)
- terraform.tfvars: provides concrete values for variables (CIDRs, sizes, names)
- outputs.tf: exposes outputs printed after running `terraform apply`(Subnets and VPC IDs and clickable link to web server)
- terraform.tfstate: Terraform state (Do not modify)
- secrets.tfvars: contains `db_password` and `db_username`

## Commands

### Terraform

- `terraform init` - Initializes a Terraform working directory and downloads required provider plugins
- `terraform fmt` - Formats Terraform configuration files to standard style
- `terraform fmt -check` - Checks if files are properly formatted without modifying them
- `terraform validate` - Validates the syntax and configuration of Terraform files
- `terraform plan` - Shows what changes Terraform will make to your infrastructure
- `terraform apply` - Applies the planned changes and creates or updates resources
- `terraform destroy` - remove all the resources defined in Terraform configuration

### SSH

- `ssh -i web-server-key ec2-user@<Public_DNS>`
