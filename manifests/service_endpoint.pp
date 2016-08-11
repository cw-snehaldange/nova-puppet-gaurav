class service_endpoint{



group { "service":
      ensure => present,
     
  }

group { "endpoint":
      ensure => present,
     
  }


user { "nova":
    ensure => present,
    groups => ['service', 'endpoint'],
}



}
