class rssh {
  package { 'rssh':
    ensure => present,
  }

  # Add /usr/bin/rssh to /etc/shells
  file_line { 'rssh_shell':
    path => '/etc/shells',
    line => '/usr/bin/rssh',
  }
}
