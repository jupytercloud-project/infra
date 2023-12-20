resource openstack_networking_subnet_v2 private {
  name       = "private"
  network_id = openstack_networking_network_v2.private.id
  cidr       = var.PRIVATE_SUBNET_CIDR
  ip_version = 4
  dns_nameservers = ["8.8.8.8", "1.1.1.1"]
}
