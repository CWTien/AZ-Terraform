<h1>Setup</h1>
<h3><a href="https://registry.terraform.io/browse/providers">Terraform Providers</a></h3>
<p>Terraform relies on plugins called providers to interact with cloud providers, SaaS providers, and other APIs. This repo currently authenticates to the <a href="https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs">Azure Provider</a> with the <a href="https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret">Service Principal + Client Secret</a> method, but there are several other options available.</p>

<h3><a href="https://developer.hashicorp.com/terraform/language/modules">Terraform Modules</a></h3>
<p>Modules are containers for multiple resources that are used together. The contents of '.\Resources' will be executed with main.tf. The directory is seperated into one file per resource type used in the provider.</p>

<h3><a href="https://developer.hashicorp.com/terraform/language/resources">Terraform Resources</a></h3>
<p>Resources are the most important element in the Terraform language. Each resource block describes one or more infrastructure objects, such as virtual networks, compute instances, or higher-level components such as DNS records. Each resource will have documentation in the provider page.</p>

<h3><a href="https://developer.hashicorp.com/terraform/language/meta-arguments/depends_on">depends_on</a></h3>
<p>Use the depends_on meta-argument to handle hidden resource or module dependencies that Terraform cannot automatically infer. You only need to explicitly specify a dependency when a resource or module relies on another resource's behavior but does not access any of that resource's data in its arguments.</p>

<h2>Commands</h2>
<h5>If you edit subcomponents or add new ones, reload them with:</h5>
<kbd><samp>terraform init -upgrade</samp></kbd>

<h5>Once you are ready to test your code:</h5>
<kbd><samp>terraform plan -var-file="secrets.tfvars" -out main.tfplan</samp></kbd>

<h5>Once you are ready to execute your code: (requires previous command)</h5>
<kbd><samp>terraform apply -var-file="secrets.tfvars"</samp></kbd>

<h5>Destroy everything associated with code base</h5>
<kbd><samp>terraform destroy -var-file="secrets.tfvars"</samp></kbd>
