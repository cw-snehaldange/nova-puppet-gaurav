class novauser{

mysql_user  {
  'nova@localhost' :
    ensure                   => 'present',

    password_hash            => mysql_password('nova'),

}

mysql_grant { 'nova@localhost/nova.api.*':
  ensure     => 'present',
 # options    => ['GRANT'],
  privileges => ['ALL'],
  table      => 'nova.api.*',
  user       => 'nova@localhost',

}

mysql_grant { 'nova@localhost/nova.*':
  ensure     => 'present',
 # options    => ['GRANT'],
  privileges => ['ALL'],
  table      => 'nova.*',
  user       => 'nova@localhost',

}

}
