This Terraform code is to create infrastructure in aws 
Here we are creating an ec2 instance, deploying a template and accessing the website using instance public IP

This file has 4 main terraform files

- provisioner.tf -- this file is to tell terraform to use "aws" cloud and download plugins to provide the infrastructure
- main.tf -- this file has all the details for creating key-pair, ec2 instance, provisioning files, installing packages 
- vars.tf -- in this file we declare variables which we need to update frequently
outputs.tf -- this will provide output on the screen, the private and public IP address of the instance


In order to create the Terraform infrastructure, use below commands

>terraform init  -- check the provider and download the plugins
>terraform validate  -- to syntactically check our code, and give some errors if there are any
>terraform fmt  --- to format our code
>terraform plan  -- it is like preview for what changes are going to happen
>terraform apply -- to create our infrastructure
>terraform destroy -- to delete our infrastructure