# Terraform
Terraform is an Open Source software that is developed by HashiCorp that enables predictable and consistent provisioning of resources. This includes many resources used inside HSDP through a number of providers such as the [Cloudfoundry](https://registry.terraform.io/providers/philips-labs/cloudfoundry/latest) provider which we will use for this excercise. An added advantage over `manifest` based orchestration is that Terraform has a [vast amount of providers](https://registry.terraform.io/browse/providers) which allow you manage a plethora of resources. There's even a [HSDP](https://registry.terraform.io/providers/philips-software/hsdp/latest) specific provider supporting `IAM`, `Container Host` and many other HSDP specific resources.

# Prerequisites
* [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
* Make sure you have the `SpaceDeveloper` role in the Cloud foundry space your are about to specify. Contact your `OrgManager` for help otherwise.
* Change to the `terraform` folder of your copy of the repository:

```shell
$ cd terraform
```

* Configure Cloud foundry variables. Create a `terraform.tfvars` file using your favorite text editor with the following lines:

```hcl
cf_org          = "your-cf-org-name"
cf_space        = "your-cf-space-name"
cf_username     = "yourCFusername"
cf_password     = "yourCFpassw0rd"
cf_api_endpoint = "https://api.cloud.pcftest.com"
cf_domain       = "cloud.pcftest.com"
```

> These variables are required as  Terraform does not use the CLoudfoundry CLI, but rather talks directly to the Cloudfdoundry API through the provider.

* In case you are not deploying to region `us-east` but for example to `eu-west`, use these values instead:

```hcl
cf_api_endpoint = "https://api.eu1.phsdp.com"
cf_domain       = "eu-west.philips-healthsuite.com"
```

# Deploying

## Init
Start by intializing Terraform. This will download the necessary providers:

```shell
$ terraform init
```

## Plan
Next up is to generate a plan. This will tell you exactly what Terraform plans to do:

```shell
$ terraform plan
```

## Apply
If the plan looks good, you can now apply it. This will deploy your apps to the cloud:

```shell
$ terraform apply
```

After a minute or so you should see the URLs on which the example apps are listening on

## Destroy

Finally, when you are done testing you can remove the apps and routes you created in the `apply` step:

```shell
$ terraform destroy
```
