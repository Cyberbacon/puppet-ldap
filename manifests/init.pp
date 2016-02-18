# == Class: ldap
#
# Puppet module to manage client and server configuration for
# **OpenLdap**.
#
#
# === Parameters
#
#  [ensure]
#    *Optional* (defaults to 'present')
#
#
# == Tested/Works on:
#   - Debian:    5.0   / 6.0   / 7.x
#   - RHEL       5.x   / 6.x
#   - CentOS     5.x   / 6.x
#   - OpenSuse:  11.x  / 12.x
#   - OVS:       2.1.1 / 2.1.5 / 2.2.0 / 3.0.2
#
#
# === Examples
#
# class { 'ldap':
# }
#
# class { 'ldap':
#   ensure => present,
# }
#
# === Authors
#
# Emiliano Castagnari ecastag@gmail.com (a.k.a. Torian)
#
#
# === Copyleft
#
# Copyleft (C) 2012 Emiliano Castagnari ecastag@gmail.com (a.k.a. Torian)
#
#
class ldap(
  $ensure      = present,
  $package     = 'ldap-utils',
  $prefix      = '/etc/ldap',
  $owner       = 'root',
  $group       = 'root',
  $config      = 'ldap.conf',
  $cacertdir   = '/etc/ssl/certs',
  $service     = 'slapd',
  $server_pattern  = 'slapd',
  $server_package  = [ 'slapd' ],
  $server_config   = 'slapd.conf',
  $server_owner    = 'openldap',
  $server_group    = 'openldap',
  $db_prefix   = '/var/lib/ldap',
  $ssl_prefix  = '/etc/ssl/certs',
  $server_run  = '/var/run/slapd',
) {

    include stdlib

    package { $package :
      ensure => $ensure,
    }

}

