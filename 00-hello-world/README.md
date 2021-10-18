# 00-hello-world

This demo is a simple "Hello, World!" example. We initially setup the files to deploy using the traditional ARM method, and then convert them to their bicep equivalent.

## Steps

1. Update `arm/azuredeploy.parameters.jsonc` and set the yourName parameter.
2. Update `arm/deploy.ps1` and provide a resource group name that you have permissions to deploy to.

> If you don't have a resource group already you can use the `az group create` command to create an empty one.