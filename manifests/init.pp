class resolver (
  $domainname  = hiera('resolver::domainname',undef),
  $searchpath  = hiera('resolver::searchpath',undef),
  $nameservers = hiera('resolver::nameservers',undef),
  $options     = hiera('resolver::options',undef),
) {

  file { '/etc/resolv.conf':
    path    => '/etc/resolv.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('resolver/etc/resolv.conf.erb');
  }

}
