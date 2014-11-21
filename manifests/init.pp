class resolver (
  $settings  = hiera_hash('resolver',undef),
) {

  file { '/etc/resolv.conf':
    path    => '/etc/resolv.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('resolver/etc/resolv.conf.erb');
  }

}
