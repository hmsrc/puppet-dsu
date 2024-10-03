class dsu::install (
  $package_name    = $::dsu::package_name,
  $package_version = $::dsu::package_version,
  ) {


    if $::operatingsystemmajrelease in ['7','8'] {
      package {$package_name:
        ensure  => $package_version,
        require => Class['::dsu::repo'],
      }
    }
}
