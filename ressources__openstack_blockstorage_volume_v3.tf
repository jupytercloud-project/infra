resource openstack_blockstorage_volume_v3 hub1 {
  name        = "hub1"
  description = "Persistent volume for jupyterhub"
  size        = 1
}

resource openstack_blockstorage_volume_v3 nfs1 {
  name        = "nfs1"
  description = "Persistent volume for NFS Server"
  size        = 10
}