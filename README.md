![microk8s](https://repository-images.githubusercontent.com/132732601/e3882d80-e367-11e9-8177-a6d5ec3eaff3)
# Linode Terraform Cloud Git Runner
## Microk8s Kubernetes Stack

[Terraform Cloud](https://www.terraform.io/cloud)

```
Terraform Variables
These Terraform variables are set using a terraform.tfvars file. 
To use interpolation or set a non-string value for a variable, click its HCL checkbox.

Key	      Value	
token     c243010fcc197dd571bf3c57b77b6b2bf869712bc4ebffd291e2xxxxxxx
image     linode/ubuntu18.04	
type      g6-standard-1	
```

## Cockpit
> Cockpit is a web-based graphical interface for servers
- port 9090
- [Cockpit](https://cockpit-project.org/)

## Visual Code coder-server
> Run VS Code on any machine anywhere and access it in the browser.
- Use Cockpit and do the follwing
```
$ code-server --link
Proxying code-server, you can access your IDE at https://example.cdr.co
```
