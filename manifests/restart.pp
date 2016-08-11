class restart{

service { 'nova-api':ensure=> running , restart=>'', status=>''}
service { 'nova-conductor':ensure=> running , restart=>'', status=>''}
service { 'nova-scheduler':ensure=> running , restart=>'', status=>''}
service { 'nova-consoleauth': ensure=> running , restart=>'', status=>''}
service { 'nova-novncproxy':ensure=> running , restart=>'', status=>''}


}
