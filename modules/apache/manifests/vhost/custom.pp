# See README.md for usage information
define apache::vhost::custom(
  $content,
  $ensure = 'present',
  $priority = '25',
  $verify_config = undef,
) {
  include ::apache

  ## Apache include does not always work with spaces in the filename
  $filename = regsubst($name, ' ', '_', 'G')

  ::apache::custom_config { $filename:
    ensure        => $ensure,
    confdir       => '/etc/apache2/sites-available',
    content       => $content,
    priority      => $priority,
    verify_config => $verify_config,
  }

  # NOTE(pabelanger): This code is duplicated in ::apache::vhost and needs to
  # converted into something generic.
  if $::apache::vhost_enable_dir {
    $vhost_symlink_ensure = $ensure ? {
      present => link,
      default => $ensure,
    }

    file { "${priority}-${filename}.conf symlink":
      ensure  => link,
      path    => "/etc/apache2/sites-enabled/${priority}-${filename}.conf",
      target  => "/etc/apache2/sites-available/${priority}-${filename}.conf",
      owner   => 'root',
      group   => 'root',
      require => Apache::Custom_config[$filename],
      notify  => Service['httpd'],
    }
  }
}
