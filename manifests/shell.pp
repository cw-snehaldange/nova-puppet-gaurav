# This class runs some shell commands using exec

class shell
{

  exec {'latest_version':                                               # exec is used to run shell
  command => "nova-manage db sync",
  }

}

#database_schema { 'Migrate TestDB':
#  db_username   => root,
#  db_password   => password
#}





