define rssh::disable($feature) {
  # Edit /etc/rssh.conf and remove 'allowscp' and 'allowsftp'
  file_line { "disable_rssh_${feature}":
    ensure  => absent,
    path    => '/etc/rssh.conf',
    line    => "allow${feature}",
    require => Package['rssh'],
  }
}
