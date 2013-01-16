class php (
  $version = 'present',
  $cli_ini_content = undef,
  $cli_ini_source = undef
) {
  class { 'php::params': }
  class { 'php::install':
    version => $version
  }
  class { 'php::config': }
}
