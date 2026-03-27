# myterraform-project

This project helps in infra creation with Terraform- Using AWS as a provider. 

We are managing our backend in AWS S3 and locking with dynamo db table. 

So to begin the project- The project directory structure should look like this-

**Terraform-project (Main folder)**
>main.tf
> variables.tf
> outputs.tf
> backend.tf
> dev.tfvars
> uat.tfvars
> prod.tfvars
- vpc
  > main.tf
  > variables.tf
  > outputs.tf
- ec2
  > main.tf
  > outputs.tf
  > variables.tf



  
