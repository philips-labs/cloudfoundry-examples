# Deploy with a manifest.yml

# Prerequisite
You'll need to have access to the Cloud foundry Command Line Interface (CLI):

* [Install the Cloud Foundry CLI](https://www.hsdp.io/develop/get-started-healthsuite/install-cloud-foundry-cli)
* [Log into Cloud Foundry](https://www.hsdp.io/develop/get-started-healthsuite/log-into-cloud-foundry)
* Make sure you have the `SpaceDeveloper` role in the Cloud foundry space. Contact your `OrgManager` for help otherwise.
* Switch to the Cloud foundry ORG and SPACE where you will be deploying your apps to:

```shell
$ cf target -o yourCForg -s yourCFspace
```

* In your Terminal change to the folder where the `manifest.yml` file resides.

```shell
$ cd manifests
```

# Deploy command
You are now ready to deploy the example apps to Cloud foundry. The `cf` command will use the [manifest.yml](manifest.yml) to which apps to deploy:

```shell
$ cf push
```

After some time all the applications described in the [manifest.yml](manifest.yml) should be deployed to your CF space. You can check this

```shell
$ cf apps
```

# Clean up

Once you are done you can delete the apps from the space

```shell
$ cf delete golang
$ cf delete nodejs
$ cf delete aspnetcore
```
