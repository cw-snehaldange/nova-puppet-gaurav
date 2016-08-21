# This class contains shell commands

class nova::shell
{

  exec {'latest_version':
    command  => "nova-manage db sync",
    provider => shell,
    user     => nova,
  }

}

  #database_schema { 'Migrate TestDB':
  #  db_username   => root,
  #  db_password   => password
  #}





