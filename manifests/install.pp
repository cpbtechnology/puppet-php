class php::install ($version = 'present') {
  package { $php::params::cli_package_name:
    ensure => $version,
  }
}
