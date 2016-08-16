#This class is main file. It includes all the other branch class. This class run as soon as rin command is given.
class nova
{

  include databasecreate 
  include novauser
  include source
  include service_endpoint
  include install
  include config
  include novaadmin
  include shell
  include restart
  
}
