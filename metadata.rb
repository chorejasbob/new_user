name             'new_user'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures new_user'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

depends 'apache-site'
depends 'users'
depends 'rackspace_user'
depends 'rackspace_iptables'
depends 'rackspace_sudo'
