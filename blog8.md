# Blog 8 [11.1.19]

### Terraform

To make things easier, you can modify your PATH variable so that you can run the terraform binary file in any directory. To do this run ```PATH=$PATH:<directory>```.

The first command to run when starting terraform is ```terraform init```. This command will create a directory containing necessary configuration files.

Next, run ```terraform plan```. You should see the below outcome:
```
root@8eb5cceff61f:~# terraform plan
provider.aws.region
  The region where AWS operations will take place. Examples
  are us-east-1, us-west-2, etc.

  Enter a value:
```

You may see an error message such as below

```
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

Error: No valid credential sources found for AWS Provider.
        Please see https://terraform.io/docs/providers/aws/index.html for more information on
        providing credentials for the AWS Provider

  on <input-prompt> line 1:
  (source code not available)
```

This can be solved with creating a provider.tf file
```
# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = "us-west-2"
  access_key = "key id"
  secret_key = "secret key"
}
```