#This file is used to create nova databases

class nova::databasecreate
{

  mysql::db { 'nova.api':
    user     => 'root',
    password => '',
    host     => 'localhost',
    grant    => ['all'],
  }

  mysql::db { 'nova':
    user     => 'root',
    password => '',
    host     => 'localhost',
    grant    => ['all'],
  }

}
