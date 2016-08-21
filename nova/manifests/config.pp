#class to configure the conf file

class nova::config {
  #file { '/etc/puppet/modules/nova/manifests/hello1.txt':
  #ensure => file,
  #owner  => 'root',
  # group  => 'root',
  # mode   => '0644',
  # source => '/etc/puppet/modules/nova/manifests/hello.txt',
  #}
  ini_setting { 'sample setting':
    ensure  => present,
    path    => '/etc/puppet/modules/nova/manifests/nova.conf',
    section => 'DEFAULT',
    setting => 'enabledapis',
    value   => 'osapi_compute,metadata',
  }


  ini_setting { 'sample setting2':
    ensure  => present,
    path    => '/etc/puppet/modules/nova/manifests/nova.conf',
    section => 'api_database',
    setting => 'connection',
    value   => 'mysql+pymysql://nova:NOVA_DBPASS@controller/nova_api',
    # key_val_separator => '=',
  }

  ini_setting { 'sample setting3':
    ensure  => present,
    path    => '/etc/puppet/modules/nova/manifests/nova.conf',
    section => 'database',
    setting => 'connection',
    value   => 'mysql+pymysql://nova:NOVA_DBPASS@controller/nova',
    }

}
