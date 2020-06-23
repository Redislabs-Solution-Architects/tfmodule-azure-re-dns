# tfmodule-azure-re-dns

Creates all of the necessary DNS records for a function Redis Enterprise cluster

## Usage

```
module "re-dns" {
  source              = "github.com/Redislabs-Solution-Architects/tfmodule-azure-re-dns"
  location            = "westus2"
  zone-name           = "demo-azure.redislabs.com"
  zone-resource-group = "sa_group"
  cluster-prefix      = "mague"
  node-external-ips   = module.azure-redis-enterprise.node-external-ips
}
```
