#  This class assign admin role to the nova user

class novaadmin{

  user { 'nova':                                          # Title (if -name not specified then it is taken as username by default
    name=> $params::mysql_nova_user,                                        # User name
    ensure=> 'present',               
    password=> $params::mysql_nova_pass,          
    project=> 'openstack',                                # project name
    roles=> 'admin'                                       # roles to be assigned 
    }


}    
