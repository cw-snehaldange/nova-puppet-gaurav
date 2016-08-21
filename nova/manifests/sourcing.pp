# This class contains sourcing admin-openrc

class nova::sourcing
{

  file { "/etc/puppet/modules/nova/manifests/.admin-openrc":
    ensure => present,
    owner  => root,
    group  => root,
    mode   => 0777,
    #  source  => "puppet:///bashrc/root/.bashrc"
  }

  exec { ".admin-openrc":
    command  => "/etc/puppet/modules/nova/manifests/.admin-openrc" ,
    path     => "/etc/puppet/modules/nova/manifests/",
    user     => root,
    provider => shell ,
    #  subscribe   => File["/root/.bashrc"], 
  }
}
