# This class is used to give privilege to nova user and access to databases

class novauser{

  mysql_user {'nova@localhost' :
    ensure                   => 'present',
    password_hash            => mysql_password($params::mysql_nova_pass),
    }

  mysql_grant { 'nova@localhost/nova.api.*':
    ensure     => 'present',
    # options    => ['GRANT'],                                 # giving privileges
    privileges => ['ALL'],               
    table      => 'nova.api.*',                                # table name to give access to
    user       => 'nova@localhost',                            # user name
    }

  mysql_grant { 'nova@localhost/nova.*':
    ensure     => 'present',
   # options    => ['GRANT'],
    privileges => ['ALL'],
    table      => 'nova.*',
    user       => 'nova@localhost',
    }

}
