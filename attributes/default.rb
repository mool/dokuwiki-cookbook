default['dokuwiki']['server_name'] = 'dokuwiki'
default['dokuwiki']['dir'] = '/opt'
default['dokuwiki']['version'] = '2013-12-08'
default['dokuwiki']['title'] = 'Dokuwiki'
default['dokuwiki']['lang'] = 'en'
default['dokuwiki']['license'] = nil
default['dokuwiki']['admin']['login'] = 'admin'
default['dokuwiki']['admin']['pass'] = '$1$1e1a49b8$40q83WGBdZD06BeSRRRRU/'
default['dokuwiki']['admin']['name'] = 'Administrator'
default['dokuwiki']['admin']['mail'] = 'admin@dokuwiki.org'

default['dokuwiki']['authtype'] = "authplain"
default['dokuwiki']['useacl'] = 1
default['dokuwiki']['plugin']['authldap']['server'] = "ldap://ldap.example.com:389"
default['dokuwiki']['plugin']['authldap']['usertree'] = "ou=People,dc=example,dc=com"
default['dokuwiki']['plugin']['authldap']['grouptree'] = "ou=Group,dc=example,dc=com"
default['dokuwiki']['plugin']['authldap']['userfilter'] = "(&(uid=%{user})(objectClass=posixAccount))"
default['dokuwiki']['plugin']['authldap']['groupfilter'] = "(&(objectClass=posixGroup)(memberUID=%{user}))"
default['dokuwiki']['plugin']['authldap']['version'] = 3
default['dokuwiki']['plugin']['authldap']['starttls'] = 1
default['dokuwiki']['plugin']['authldap']['referrals'] = 0
default['dokuwiki']['plugin']['authldap']['binddn'] = "cn=admin, dc=my, dc=home"
default['dokuwiki']['plugin']['authldap']['bindpw'] = "secret"
default['dokuwiki']['plugin']['authldap']['userscope'] = "sub"
default['dokuwiki']['plugin']['authldap']['groupscope'] = "sub"
default['dokuwiki']['plugin']['authldap']['debug'] = 0

# Nginx config
default['nginx']['default_site_enabled'] = false
