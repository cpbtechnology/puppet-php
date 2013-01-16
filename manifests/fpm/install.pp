class php::fpm::install ($version = 'present') {
  package { $php::params::fpm_package_name:
    ensure  => $version,
    require => Class['php'],
  }
}
