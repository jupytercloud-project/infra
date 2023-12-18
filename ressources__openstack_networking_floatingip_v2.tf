resource openstack_networking_floatingip_v2 jupyterhub {
  pool = data.openstack_networking_network_v2.public.name
}