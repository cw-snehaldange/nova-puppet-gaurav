# This class is used to create databases. For the same, we had to import mysql module. 

class databasecreate
{

   mysql::db { 'nova.api':
     user     => 'root',                       #user who has privilege to create a database
     password => '',                           
     host     => 'localhost',                   # hostname 
     grant    => ['all'],                       # privilege to be granted
     }

   
  mysql::db { 'nova':
     user     => 'root',
     password => '',
     host     => 'localhost',
     grant    => ['all'],
     }

}
