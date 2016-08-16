#This class creates endpoints and groups and assign nova user to the groups

class service_endpoint
{

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
