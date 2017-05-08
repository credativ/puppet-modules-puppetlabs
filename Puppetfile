forge "http://forge.puppetlabs.com"

mod 'puppetlabs/stdlib', '4.11.0'
# this is the last version working w/o future parser
mod 'puppetlabs/apt', '1.8.0'
mod 'puppetlabs/apache', '1.11.0'
mod 'puppetlabs/postgresql', '4.6.1'
mod 'puppetlabs/concat', '1.2.5'
mod 'puppetlabs/lvm', :git => 'https://github.com/puppetlabs/puppetlabs-lvm.git', :ref => '0.6.0' # swap support
mod 'puppetlabs/vcsrepo', '0.2.0'
mod 'puppetlabs/inifile', '1.6.0'

# dependencies of puppet-module-ocldap
mod 'camptocamp/openldap', '1.15.0'
# from git because puppet-ocldap requires openldap::server::access_wrapper
mod 'openldap',
    :git    => 'https://github.com/camptocamp/puppet-openldap.git',
    :commit => '36b8a3838382e255b02a6f2edc997e69bb8a6758'

mod 'herculesteam/augeasproviders_core', '2.1.3'
mod 'herculesteam/augeasproviders_shellvar', '2.2.1'

mod 'edestecd/clamav', '1.0.0'

mod 'systemd',
   :git => 'git://github.com/credativ/puppet-systemd.git'

# mod 'ntp',
#   :git => 'git://github.com/puppetlabs/puppetlabs-ntp.git'

# mod 'apt',
#   :git => 'https://github.com/puppetlabs/puppetlabs-apt.git',
#   :ref => 'feature/master/dans_refactor'
