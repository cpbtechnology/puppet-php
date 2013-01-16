class php::apache2::install ($version = 'present') {
  package { $php::params::apache_package_name:
    ensure  => $version,
    notify  => Service[$php::params::apache_service_name],
  }
}
