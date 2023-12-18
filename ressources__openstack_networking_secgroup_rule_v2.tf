resource openstack_networking_secgroup_rule_v2 ssh {
  security_group_id = openstack_networking_secgroup_v2.jupytercloud_default.id
  description       = "22 TCP"
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
}

resource openstack_networking_secgroup_rule_v2 ping {
  security_group_id = openstack_networking_secgroup_v2.jupytercloud_default.id
  description       = "ICMP"
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  port_range_min    = 0
  port_range_max    = 0
  remote_ip_prefix  = "0.0.0.0/0"
}

resource openstack_networking_secgroup_rule_v2 http {
  security_group_id = openstack_networking_secgroup_v2.jupytercloud_hub.id
  description       = "80 TCP"
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 80
  port_range_max    = 80
  remote_ip_prefix  = "0.0.0.0/0"
}

resource openstack_networking_secgroup_rule_v2 https {
  security_group_id = openstack_networking_secgroup_v2.jupytercloud_hub.id
  description       = "443 TCP"
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 443
  port_range_max    = 443
  remote_ip_prefix  = "0.0.0.0/0"
}

resource openstack_networking_secgroup_rule_v2 singleuserport {
  security_group_id = openstack_networking_secgroup_v2.jupytercloud_singleuser.id
  description       = "8888 TCP from hub"
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 8888
  port_range_max    = 8888
  remote_group_id   = openstack_networking_secgroup_v2.jupytercloud_hub.id
}

resource openstack_networking_secgroup_rule_v2 portmap {
  security_group_id = openstack_networking_secgroup_v2.jupytercloud_nfs.id
  description       = "111 portmap TCP"
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 111
  port_range_max    = 111
  remote_ip_prefix  = var.PRIVATE_SUBNET_CIDR
}

resource openstack_networking_secgroup_rule_v2 nfs {
  security_group_id = openstack_networking_secgroup_v2.jupytercloud_nfs.id
  description       = "2049 portmap TCP"
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 2049
  port_range_max    = 2049
  remote_ip_prefix  = var.PRIVATE_SUBNET_CIDR
}


