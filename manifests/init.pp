class dnsfix {
  file { "/etc/resolvconf/resolv.conf.d/head":
    path    => "/etc/resolvconf/resolv.conf.d/head",
    owner   => root,
    group   => root,
    mode    => 644,
    source => "puppet:///modules/dnsfix/head",
    notify => Exec["reload-varnish"],
  }

  exec { "reload-resolvconf":
    command => "/usr/sbin/service resolvconf restart",
    refreshonly => true,
  }
}
