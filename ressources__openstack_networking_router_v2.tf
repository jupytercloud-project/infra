resource openstack_networking_router_v2 public_to_private {
  name                = "public_to_private"
  admin_state_up      = true
  external_network_id = data.openstack_networking_network_v2.public.id
}