provider "azurerm" {
  features {}
}

#resource "azurerm_resource_group" "re-dns-rg" {
#  name     = "re-dns-${var.cluster-prefix}"
#  location = "${var.location}"
#}

resource "azurerm_dns_ns_record" "re-dns-ns" {
  name                = var.cluster-prefix
  zone_name           = var.zone-name
  resource_group_name = var.zone-resource-group
  ttl                 = 300

  records = [
    "ns1.${var.cluster-prefix}.${var.zone-name}",
    "ns2.${var.cluster-prefix}.${var.zone-name}",
    "ns3.${var.cluster-prefix}.${var.zone-name}"
  ]

}

resource "azurerm_dns_a_record" "re-dns-a" {
  count               = length(var.node-external-ips)
  name                = "ns${count.index + 1}.${var.cluster-prefix}"
  zone_name           = var.zone-name
  resource_group_name = var.zone-resource-group
  ttl                 = 300
  records             = [element(var.node-external-ips, count.index)]
}
