============
nixyDomains
============

A simple flake for freeing from fixing output hash over and over again while using geolocation databases or domain sets.


usage
======

Add to your flake input

``inputs.nixyDomains.url = "github:oluceps/nixyDomains";``


use with, e.g.:

package:

``files = [ "${inputs.nixyDomains.packages.x86_64-linux.default.src}/geosite.dat" ];``

overlay:

``overlays = [inputs.nixyDomains.default];``

``files = [ "${pkgs.nixy-domains.src}/geosite.dat" ];``


`<https://github.com/oluceps/nixos-config/blob/38fa9a294427a431320c00a08b051026fdc9a163/services.nix#L189>`_
