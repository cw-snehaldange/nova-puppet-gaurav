class install
{
# include puppet::modules::sudo

 package{ 'nova-api': ensure=>present }

 package{ 'nova-conductor': ensure=>present }
 package{ 'nova-consoleauth': ensure=>present }

}


