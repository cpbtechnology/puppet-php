class php::fpm (
  $version = present,
  $fpm_ini_content = undef,
  $fpm_ini_source = undef,
  $fpm_conf_content = undef,
  $fpm_conf_source = undef
) {
  class { 'php':
    version: $version
  }
  class { 'php::fpm::install':
    version: $version
  }
  include php::fpm::config
  include php::fpm::service

  Class['php::config'] ~> Class['php::fpm::service']
}
