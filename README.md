![example workflow](https://github.com/mallond/linode_terraform/actions/workflows/deploy_docker_ansible.yml/badge.svg)

![lab](https://brewminate.com/wp-content/uploads/2018/02/020918-25-History-Laboratory-Science.jpg)

# Development Laboratory Build via Terraform Cloud

> Terraform – Being frugal and idempotent. Desktop development has some major dangers, snowflake settings, hanging ports, and a configuration landmine can destroy your productivity. Worst of all there is no record of your work. The frugal side is that sometimes you need a scratch pad build that you can scale without spending large amounts of money. Regardless – Do everything on the cloud. 

- Microk8s Kubernetes Stack
- Docker
- Visual Code Cloud IDE
- Visual Cloud Dashboard and Terminal
- Azure CLI

[Terraform Cloud](https://www.terraform.io/cloud)
> Creating a Cloud instance is as easy as 1-2-3: 1) Login to Terraform Cloud; 2) Build your machine; 3) Use the Cloud interface, and IDE – “Too Easy!”

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

![Jokes Card](https://readme-jokes.vercel.app/api)
