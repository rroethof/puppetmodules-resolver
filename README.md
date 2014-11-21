puppetmodules-resolver
======================

Puppet module for resolv.conf

Tested on Debian GNU/Linux 7.0 Squeeze with Puppet 3.7. 
Patches for other operating systems are welcome.


Installation
------------

Clone this repo to a resolver directory under your Puppet modules directory:

    git clone git://github.com/rroethof/puppetmodules-resolver.git resolver

If you don't have a Puppet Master you can create a manifest file
based on the notes below and run Puppet in stand-alone mode
providing the module directory you cloned this repo to:

    puppet apply --modulepath=modules resolver.pp


Usage
-----

If you include the resolver class the dns information will be configured.

    include resolver

You can also configure specific settings via hiera:

    resolver: 
      nameservers: 
        - 164.138.28.10
        - 164.138.28.11
        - 8.8.8.8
        - 8.8.4.4
      searchpath: 
        - familieroethof.nl

