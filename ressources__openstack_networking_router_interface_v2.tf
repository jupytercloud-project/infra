resource openstack_networking_router_interface_v2 private {
  router_id = openstack_networking_router_v2.public_to_private.id
  subnet_id = openstack_networking_subnet_v2.private.id
}