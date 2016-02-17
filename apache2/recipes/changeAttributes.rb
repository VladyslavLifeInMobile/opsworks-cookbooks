include_recipe 'apache2'

override[apache2][limitrequestline] = 16380
override[apache2][limitrequestfieldsize] = 16380
override[apache2][keepalivetimeout] = 101