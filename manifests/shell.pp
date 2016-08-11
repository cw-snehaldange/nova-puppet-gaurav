class shell
{


exec {'latest_version':
 
  command => "nova-manage db sync",
}

}

#database_schema { 'Migrate TestDB':
#  db_username   => root,
#  db_password   => password
#}





