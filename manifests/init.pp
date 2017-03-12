class rclocal (

  $rclocal_file = '/etc/rc.local'

) {

  concat { $rclocal_file:
    owner => 'root',
    group => 'root',
    mode  => '0755'
  }

  concat::fragment{ 'rclocal_header':
    target  => $rclocal_file,
    content => "#!/bin/sh\n# Managed by puppet - do not modify\n",
    order   => '01'
  }
}
