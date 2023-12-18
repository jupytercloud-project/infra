resource openstack_networking_secgroup_v2 jupytercloud_default {
  name        = "jupytercloud_default"
  description = "SSH and ping"
}
resource openstack_networking_secgroup_v2 jupytercloud_hub {
  name        = "jupytercloud_hub"
  description = "Jupyterhub security group (80/443 from ext)"
}
resource openstack_networking_secgroup_v2 jupytercloud_singleuser {
  name        = "jupytercloud_singleuser"
  description = "singleuser 8888 from hub"
}
resource openstack_networking_secgroup_v2 jupytercloud_nfs {
  name        = "jupytercloud_nfs"
  description = "nfs nfs from hub and singleuser"
}