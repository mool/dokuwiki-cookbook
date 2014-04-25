name             'dokuwiki'
maintainer       'Pablo Gutierrez del Castillo'
maintainer_email 'pablogutierrezdelc@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures dokuwiki'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

supports 'ubuntu'

depends 'apt'
depends 'ark'
depends 'nginx'

recipe 'default', 'Installs and configures nginx, php-fpm and dokuwiki'
