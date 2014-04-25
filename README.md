# dokuwiki cookbook

Installs and configures Dokuwiki.

# Requirements
### Platforms
The following platforms are supported and tested:

- Ubuntu 12.04

### Cookbooks
The following cookbooks are direct dependencies:

- apt
- ark
- nginx

# Usage
Add `dokuwiki::default` to the run-list.

# Attributes
- `node['dokuwiki']['server_name']` - The domain name for the nginx vhost
- `node['dokuwiki']['dir']` - Location to install dokuwiki, by default `/opt`
- `node['dokuwiki']['version']` - Dokuwiki version to install
- `node['dokuwiki']['title']` - Wiki Title
- `node['dokuwiki']['lang']` - Wiki Language
- `node['dokuwiki']['license']` - Wiki license
- `node['dokuwiki']['admin']['login']` - Admin user
- `node['dokuwiki']['admin']['pass']` - Admin hashed pass, you can generate it in http://sprhost.com/tools/SMD5.php
- `node['dokuwiki']['admin']['name']` - Admin name
- `node['dokuwiki']['admin']['mail']` - Admin email address

# Author

Author:: Pablo Gutierrez del Castillo (<pablogutierrezdelc@gmail.com>)
