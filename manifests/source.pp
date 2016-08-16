# This class is used to create and source the file

class source
{

  file { "/etc/puppet/modules/nova/manifests/.admin-openrc":
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => 0644,
    # source  => "puppet:///bashrc/root/.bashrc"
    }

  exec { "admin-openrc":
    command     => "source /etc/puppet/modules/nova/manifests/.admin-openrc",
    provider => shell,
    #  subscribe   => File["/root/.bashrc"], 
    }
}
