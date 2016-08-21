# This class is used to create services and endpoints

class nova::service_endpoint
{

  group { "service" :
    ensure => present,
  }

  group { "endpoint" :
    ensure => present,
  }

}
