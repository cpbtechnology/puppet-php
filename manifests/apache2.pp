class php::apache2 (
  $ensure               = present,
  $apache2_ini_content = undef,
  $apache2_ini_source  = undef
) {
  require apache

  class { 'php':
    ensure => $ensure
  }
  class { 'php::apache2::install':
    ensure => $ensure
  }
  include php::apache2::config

  Class['php::config'] ~> Service[$php::params::apache_service_name]
}
