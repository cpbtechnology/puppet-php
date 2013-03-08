class php::fpm (
  $ensure           = present,
  $fpm_ini_content  = undef,
  $fpm_ini_source   = undef,
  $fpm_conf_content = undef,
  $fpm_conf_source  = undef
) {
  class { 'php':
    ensure => $ensure
  }
  class { 'php::fpm::install':
    ensure => $ensure
  }
  include php::fpm::config
  include php::fpm::service

  Class['php::config'] ~> Class['php::fpm::service']
}
