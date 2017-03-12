#puppet-rclocal

This module is used by other modules to update content in `/etc/rc.local`.

[![Build Status](https://secure.travis-ci.org/icalvete/puppet-rclocal.png)](http://travis-ci.org/icalvete/puppet-rclocal)

It will overwrite `/etc/rc.local`.

# Usage

Sample Hiera configuration

`serverone.yaml`

    ---
    classes:
      - rclocal
      - sssd
      - stdlib

Sample module

    class sssd {
      ::rclocal::register{ 'sssd': 
        content => "/usr/sbin/fstrim /\n/usr/sbin/fstrim /boot\n",
      }
    }

##Authors:

Israel Calvete Talavera <icalvete@gmail.com>
