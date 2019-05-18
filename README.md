NAME
====

Constants::Netinet::In - Constants from netinet/in.h

SYNOPSIS
========

```perl6
use Constants::Netinet::In :IP, :IPPROTO;

say IPPROTO::IP;

say IP::ADD_MEMBERSHIP;

say IPPROTO.enums.keys;

say IP.enums.keys;
```

DESCRIPTION
===========

Constants::Netinet::In contains many enumerated values that are implemented as #define directives in <netinet/in.h>.

This module should be compatible with windows, macos, linux, netbsd, freebsd, openbsd, and dragonflybsd.

Each platform will receive slightly different enumerations.

Based on C headers found on official sites and unofficial mirrors of source trees.

AUTHOR
======

Travis Gibson <TGib.Travis@protonmail.com>

COPYRIGHT AND LICENSE
=====================

Copyright 2019 Travis Gibson

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

