puppet-dnsfix
=============

fix / speedup dns-resolution via resolvconf.d   

best applied in a "pre"-main stage   

class stages {   
  stage { 'pre': before => Stage['main'] }   
}   


in your instance declaration:   

include stages   
class {'dnsfix': stage => pre; }   
