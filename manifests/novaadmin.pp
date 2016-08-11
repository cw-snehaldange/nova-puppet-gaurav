class novaadmin{

  user { 'nova':
    name=> 'nova',
    ensure=> 'present', 
    password=> 'nova',
    project=> 'openstack',
    roles=> 'admin'
   }


}    
