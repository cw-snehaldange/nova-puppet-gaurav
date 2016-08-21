# This class is used to give groups and roles to nova user

class nova::novaadmin
{

  user { 'nova':
    name     => $params::mysql_nova_user,
    ensure   => 'present',
    password => $params::mysql_nova_pass,
    project  => 'openstack',
    roles    => 'admin',
    groups   => ['service', 'endpoint'],
  }

}
