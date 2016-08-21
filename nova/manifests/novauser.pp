# The class is used to grant privileges for nova database

class nova::novauser
{
  
  mysql_user { 'nova@localhost' :
    ensure        => 'present',
    password_hash => mysql_password($nova::params::mysql_nova_pass),
  }

  mysql_grant { 'nova@localhost/nova.api.*':
    ensure     => 'present',
    # options  => ['GRANT'],
    privileges => ['ALL'],
    table      => 'nova.api.*',
    user       => 'nova@localhost',
  }

  mysql_grant { 'nova@localhost/nova.*':
    ensure     => 'present',
    # options  => ['GRANT'],
    privileges => ['ALL'],
    table      => 'nova.*',
    user       => 'nova@localhost',
  }

}
