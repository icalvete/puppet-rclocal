define rclocal::register(

  $content = undef,
  $order   = '10'

) {

  concat::fragment{ "rclocal_fragment_${name}":
    target  => $rclocal::rclocal_file,
    content => $content,
    order   => $order,
  }
}
