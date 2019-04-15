NAME
====

Constants::Netinet::IN - Constants from netinet/in.h

SYNOPSIS
========

```perl6
use Constants::Netinet::IN :IP, :IPPROTO;

say IPPROTO::IP;

say IP::ADD_MEMBERSHIP;

say IPPROTO.enums.keys;

say IP.enums.keys;
```

DESCRIPTION
===========

Constants::Netinet::IN contains many enumerated values that are implemented as #define directives.

AUTHOR
======

Travis Gibson <TGib.Travis@protonmail.com>

COPYRIGHT AND LICENSE
=====================

Copyright 2019 Travis Gibson

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

