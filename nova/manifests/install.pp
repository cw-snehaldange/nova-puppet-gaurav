#This class is used to install all the required nova controller software

class nova::install
{

  package{ 'nova-api': ensure=>present }
  package{ 'nova-conductor': ensure=>present }
  package{ 'nova-consoleauth': ensure=>present }

}


