============
nixyDomains
============

A simple flake for freeing from fixing output hash over and over again while using geolocation databases or domain sets.


usage
======

Add to your flake input

``inputs.nixyDomains.url = "github:oluceps/nixyDomains";``


use with, e.g.:

``files = [ "${inputs.nixyDomains.packages.x86_64-linux.default.src}/accelerated-domains.china.txt" ];``


`My own use case <https://github.com/oluceps/nixos-config/commit/1fb46f5a71938969c00798161a1ff04a5c23340d>`_
