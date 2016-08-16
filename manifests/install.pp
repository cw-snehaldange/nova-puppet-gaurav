#This class is used to install the required packages.

class install
{

  package{ 'nova-api': ensure=>present }
  package{ 'nova-conductor': ensure=>present }
  package{ 'nova-consoleauth': ensure=>present }

}


