============
nixyDomains
============

A simple flake for freeing from fixing output hash over and over again while using geolocation databases or domain sets.


usage
======

Add to your flake input

``inputs.nixyDomains.url = "github:oluceps/nixyDomains";``


use with, e.g.:

``files = [ "${inputs.nixyDomains.packages.x86_64-linux.default.src}/geosite.dat" ];``


`My own use case <https://github.com/oluceps/nixos-config/commit/24e211c0766eeaedae06b0fda8a4a29de28d6b7d>`_
