#This class is used to add code in conf file.

class config
{
  
#Expected output:

#[DEFAULT]
#enabledapis = osapi_compute,metadata
#[api_database]
#connection = mysql...
#[database]
#connection = mysql...

  ini_setting { 'sample setting':
    ensure  => present,
    path    => '/etc/puppet/modules/nova/manifests/nova.conf',
    section => 'DEFAULT',
    setting => 'enabledapis',
    value   => 'osapi_compute,metadata',
    }


  ini_setting { 'sample setting2':
    ensure            => present,
    path              =>  '/etc/puppet/modules/nova/manifests/nova.conf',
    section           => 'api_database',
    setting           => 'connection',
    value             => 'mysql+pymysql://nova:NOVA_DBPASS@controller/nova_api',
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
