class php::install ($ensure = 'present') {
  package { $php::params::cli_package_name:
    ensure => $ensure,
  }
}
