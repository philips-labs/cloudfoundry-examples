# Modules
Modules are a key concept of Terraform. [Modules](https://www.terraform.io/docs/configuration/blocks/modules/index.html) are containers for multiple resources that are used together. 
A module consists of a collection of  `.tf` and/or `.tf.json` files kept together in a directory.

Modules are the main way to package and reuse resource configurations with Terraform.

# buildpack_app module
This directory contains a module we call `buildpack_app` which groups a minimal set of Cloud foundry resources needed to publish a buildpack application on a public endpoint. 
We can reuse this module to deploy different apps all using the same formula described in this module.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| domain\_id | The domain ID to use for the routes | `string` | n/a | yes |
| host\_postfix | Host postfix to use | `string` | n/a | yes |
| memory | Memory to allocate | `number` | `512` | no |
| name | The app name | `string` | n/a | yes |
| path | The zip file containing the app source code | `string` | n/a | yes |
| space\_id | The space id to deploy in | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| endpoint | The endpoint (hot) of the application |
