class php (
  $ensure          = 'present',
  $cli_ini_content = undef,
  $cli_ini_source  = undef
) {
  class { 'php::params': }
  class { 'php::install':
    ensure => $ensure
  }
  class { 'php::config': }
}
