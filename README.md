# terraformAWSLab6

## To do

- [x] VPC (Subnets, availability zones)
- [x] Internet Gateway
- [x] Nat Gateway
- [x] Web server (create, sg, user data)
- [x] Route table to internet
- [x] Route table private subnet to nat gateway
- [ ] RDS Primary (create and sg)
- [ ] RDS Secondary (create and sg)

## Credentials

- Modify aws credentials: `notepad "$env:USERPROFILE\.aws\credentials"`

## Project Structure

```bash
.
├── data.tf
├── main.tf
├── outputs.tf
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
