# It is a main file used to rum all other files
class nova
{

  include nova::params
  include nova::databasecreate
  include nova::novauser
  include nova::sourcing
  include nova::service_endpoint
  include nova::install
  include nova::config
  include nova::novaadmin
  include nova::shell
  include nova::restart

}
