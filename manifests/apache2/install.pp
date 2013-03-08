class php::apache2::install ($ensure = 'present') {
  package { $php::params::apache_package_name:
    ensure  => $ensure,
    notify  => Service[$php::params::apache_service_name],
  }
}
