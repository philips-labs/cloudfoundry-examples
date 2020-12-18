# Deploy with a manifest.yml

# Prerequisite
You'll need to have access to the Cloud foundry Command Line Interface (CLI):

* [Install the Cloud Foundry CLI](https://www.hsdp.io/develop/get-started-healthsuite/install-cloud-foundry-cli)
* [Log into Cloud Foundry](https://www.hsdp.io/develop/get-started-healthsuite/log-into-cloud-foundry)
* Make sure you have the `SpaceDeveloper` role in the Cloud foundry space. Contact your `OrgManager` for help otherwise.

## Deploy command

```shell
$ cf push
```

After some time all the applications described in the [manifest.yml](manifest.yml) should be deployed to your CF space.
