define rssh::enable($feature) {
  # Edit /etc/rssh.conf and uncomment 'allowscp' and 'allowsftp'
  file_line { "enable_rssh_${feature}":
    ensure  => present,
    path    => '/etc/rssh.conf',
    line    => "allow${feature}",
    require => Package['rssh'],
  }
}
