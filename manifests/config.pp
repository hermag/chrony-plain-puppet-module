# == Class: chrony::config
class chrony::config inherits chrony {

  file { "/etc/chrony.conf":
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('chrony/chrony.conf'),
  }

}
