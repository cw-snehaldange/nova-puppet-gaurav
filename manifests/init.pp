# include mysql
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
