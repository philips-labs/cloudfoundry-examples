# Terraform
Terraform is an Open Source software that is developed by HashiCorp that enables predictable and consistent provisioning of resources. This includes many resources used inside HSDP through a number of providers such as the the [cloudfoundry](https://registry.terraform.io/providers/philips-labs/cloudfoundry/latest) and [hsdp](https://registry.terraform.io/providers/philips-software/hsdp/latest).

# Prerequisites
* [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
* Configure Cloud foundry variables. Create a `terraform.tfvars` file with the following

``hcl
cf_org      = "your-cf-org-name"
cf_space    = "your-cf-space-name"
cf_username = "yourCFusername"
cf_password = "yourCFpassw0rd"
```

* In case you are not deploying to `us-east` but for example to `eu-west`, add the following entry as well:

```hcl
cf_api_endpoint = "https://api.eu1.phsdp.com"
```

# Deploying

## Init
Start by intializing Terraform. This will download the necessary providers:

```shell
$ terraform init
```

## Plan
Next up is to generate plan. This will tell you exactly what Terraform plans to do:

```shell
$ terraform plan
```

## Apply
If the plan looks good, you can now apply it. This will actually deploy your apps to the cloud:

```shell
$ terraform apply
```
