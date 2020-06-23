provider "azurerm" {
}

module "azure-dns" {
  source              = "../"
  zone-name           = "demo-azure.redislabs.com"
  zone-resource-group = "sa_group"
  cluster-prefix      = "tftest"
  location            = "uswest2"
  node-external-ips   = ["192.168.0.1", "192.168.0.2", "192.168.0.3"]
}
