# rssh module for Puppet

[![Build
Status](https://secure.travis-ci.org/woneill/puppet-rssh.png)](http://travis-ci.org/woneill/puppet-rssh)

Manages the installation and configuration of rssh (restricted shell). See
<http://www.pizzashack.org/rssh/> for details on rssh itself.

### Examples

    include rssh

    rssh::enable { 'sftp-toggle':
      feature => 'sftp'
    }

    rssh::disable { 'scp-toggle':
      feature => 'scp'
    }
