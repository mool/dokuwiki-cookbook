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
- `node['dokuwiki']['admin']['pass']` - Admin hashed pass (you can generate it in http://sprhost.com/tools/SMD5.php)
- `node['dokuwiki']['admin']['name']` - Admin name
- `node['dokuwiki']['admin']['mail']` - Admin email address
- `node['dokuwiki']['authtype']` - Authentication backend to use.
- `node['dokuwiki']['useacl']` - Whether or not ACLs should be used.
- `node['dokuwiki']['plugin']['authldap']['server']` - URI of directory server to use for authentication.
- `node['dokuwiki']['plugin']['authldap']['usertree']` - Top-level directory tree node from which to perform user lookup.
- `node['dokuwiki']['plugin']['authldap']['grouptree']` - Top-level directory tree node from which to perform group lookup.
- `node['dokuwiki']['plugin']['authldap']['userfilter']` - User filter.
- `node['dokuwiki']['plugin']['authldap']['groupfilter']` - Group filter.
- `node['dokuwiki']['plugin']['authldap']['version']` - This is optional but may be required for your server.
- `node['dokuwiki']['plugin']['authldap']['starttls']` - This enables the use of the STARTTLS command.
- `node['dokuwiki']['plugin']['authldap']['referrals']` - This is optional and is required to be off when using Active Directory.
- `node['dokuwiki']['plugin']['authldap']['binddn']` - Optional bind user.
- `node['dokuwiki']['plugin']['authldap']['bindpw']` - Optional bind password.
- `node['dokuwiki']['plugin']['authldap']['userscope']` - Limit search scope for user searches (sub|one|base).
- `node['dokuwiki']['plugin']['authldap']['groupscope']` - Limit search scope for group searches (sub|one|base).
- `node['dokuwiki']['plugin']['authldap']['debug']` - Debug the LDAP conversations?
- `node['dokuwiki']['plugin']['authldap']['mapping']['name']` - Replace the content of name with first element of this named attribute.
- `node['dokuwiki']['plugin']['authldap']['mapping']['grps']` - Replace the content of grps with what is provided in the attribute memberof and apply the regexp to every element in it.
# Author

Author:: Pablo Gutierrez del Castillo (<pablogutierrezdelc@gmail.com>)
