class php::fpm::install ($ensure = 'present') {
  package { $php::params::fpm_package_name:
    ensure  => $ensure,
    require => Class['php'],
  }
}
