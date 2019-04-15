use v6.c;

=begin pod

=head1 NAME

Constants::Netinet::IN - Constants from netinet/in.h

=head1 SYNOPSIS

=begin code :lang<perl6>

use Constants::Netinet::IN :IP, :IPPROTO;

say IPPROTO::IP;

say IP::ADD_MEMBERSHIP;

say IPPROTO.enums.keys;

say IP.enums.keys;

=end code

=head1 DESCRIPTION

Constants::Netinet::IN contains many enumerated values that are implemented as #define directives.

=head1 AUTHOR

Travis Gibson <TGib.Travis@protonmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2019 Travis Gibson

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

unit class Constants::Netinet::IN:ver<0.0.1>:auth<cpan:GARLANDG>;

#Here be dragons

constant IPPROTO is export(:IPPROTO) = $*KERNEL.name eq 'linux' ?? do {
  my enum IPPROTO (
    IP => 0,
    ICMP => 1,
    IGMP => 2,
    IPIP => 4,
    TCP => 6,
    EGP => 8,
    PUP => 12,
    UDP => 17,
    IDP => 22,
    TP => 29,
    DCCP => 33,
    IPV6 => 41,
    RSVP => 46,
    GRE => 47,
    ESP => 50,
    AH => 51,
    MTP => 92,
    BEETPH => 94,
    ENCCAP => 98,
    PIM => 103,
    COMP => 108,
    SCTP => 132,
    UDPLITE => 136,
    MPLS => 137,
    RAW => 255,
    MAX => 256,
  );
  IPPROTO;
}
!! ($*KERNEL.name eq any('netbsd') ?? do {
  my enum IPPROTO (
    IP => 0,
    HOPOPTS => 0,
    ICMP => 1,
    IGMP => 2,
    GGP => 3,
    IPIP => 4,
    IPV4 => 4,
    TCP => 6,
    EGP => 8,
    PUP => 12,
    UDP => 17,
    IDP => 22,
    TP => 29,
    DCCP => 33,
    IPV6 => 41,
    ROUTING => 43,
    FRAGMENT => 44,
    RSVP => 46,
    GRE => 47,
    ESP => 50,
    AH => 51,
    MOBILE => 55,
    IPV6_ICMP => 58,
    ICMPV6 => 58,
    NONE => 59,
    DSTOPTS => 60,
    EON => 80,
    ETHERIP => 97,
    ENCCAP => 98,
    PIM => 103,
    COMP => 108,
    VRRP => 112,
    CARP => 112,
    L2TP => 115,
    SCTP => 132,
    PFSYNC => 240,
    RAW => 255,
    MAX => 256,
    DONE => 257,
  );
  IPPROTO;
}
!! ($*KERNEL.name eq any('dragonflybsd') ?? do {
  my enum IPPROTO (
    IP => 0,
    HOPOPTS => 0,
    ICMP => 1,
    IGMP => 2,
    GGP => 3,
    IPIP => 4,
    IPV4 => 4,
    TCP => 6,
    ST => 7,
    EGP => 8,
    PIGP => 9,
    RCCMON => 10,
    NVPII => 11,
    PUP => 12,
    ARGUS => 13,
    EMCON => 14,
    XNET => 15,
    CHAOS => 16,
    UDP => 17,
    MUX => 18,
    MEAS => 19,
    HMP => 20,
    PRM => 21,
    IDP => 22,
    TRUNK1 => 23,
    TRUNK2 => 24,
    LEAF1 => 25,
    LEAF2 => 26,
    RDP => 27,
    IRTP => 28,
    TP => 29,
    BLT => 30,
    NSP => 31,
    INP => 32,
    SEP => 33,
    '3PC' => 34,
    IDPR => 35,
    XTP => 36,
    DDP => 37,
    CMTP => 38,
    TPXX => 39,
    IL => 40,
    IPV6 => 41,
    SDRP => 42,
    ROUTING => 43,
    FRAGMENT => 44,
    IDRP => 45,
    RSVP => 46,
    GRE => 47,
    MHRP => 48,
    BHA => 49,
    ESP => 50,
    AH => 51,
    INLSP => 52,
    SWIPE => 53,
    NHRP => 54,
    MOBILE => 55,
    TLSP => 56,
    SKIP => 57,
    IPV6_ICMP => 58,
    ICMPV6 => 58,
    NONE => 59,
    DSTOPTS => 60,
    AHIP => 61,
    CFTP => 62,
    HELLO => 63,
    SATEXPAK => 64,
    KRYPTOLAN => 65,
    RVD => 66,
    IPPC => 67,
    ADFS => 68,
    SATMON => 69,
    VISA => 70,
    IPCV => 71,
    CPNX => 72,
    CPHB => 73,
    WSN => 74,
    PVP => 75,
    BRSATMON => 76,
    ND => 77,
    WBMON => 78,
    WBEXPAK => 79,
    EON => 80,
    VMTP => 81,
    SVMTP => 82,
    VINES => 83,
    TTP => 84,
    IGP => 85,
    DGP => 86,
    TCF => 87,
    IGRP => 88,
    OSFIGP => 89,
    SRPC => 90,
    LARP => 91,
    MTP => 92,
    AX25 => 93,
    IPEIP => 94,
    MICP => 95,
    SCCSP => 96,
    ETHERIP => 97,
    ENCCAP => 98,
    APES => 99,
    GMTP => 100,
    PIM => 103,
    IPCOMP => 108,
    CARP => 112,
    PGM => 113,
    PFSYNC => 240,
    DIVERT => 254,
    RAW => 255,
    MAX => 256,
    DONE => 257,
    UNKNOWN => 258,
  );
  IPPROTO;
}
!! ($*DISTRO.is-win() ?? do {
  my enum IPPROTO (
    IP => 0,
    HOPOPTS => 0,
    ICMP => 1,
    IGMP => 2,
    GGP => 3,
    IPV4 => 4,
    ST => 5,
    TCP => 6,
    CBT => 7,
    EGP => 8,
    PIGP => 9,
    PUP => 12,
    UDP => 17,
    IDP => 22,
    RDP => 27,
    IPV6 => 41,
    ROUTING => 43,
    FRAGMENT => 44,
    ESP => 50,
    AH => 51,
    ICMPV6 => 58,
    NONE => 59,
    DSTOPTS => 60,
    ND => 77,
    WBMON => 78,
    PIM => 103,
    PGM => 113,
    L2TP => 115,
    RAW => 255,
    IPSEC => 256,
    IPSECOFFLOAD => 259,
    MAX => 260,
  );
  IPPROTO;
}
!! ($*KERNEL.name eq 'freebsd' ?? do {
  my enum IPPROTO (
    IP => 0,
    HOPOPTS => 0,
    ICMP => 1,
    IGMP => 2,
    GGP => 3,
    IPIP => 4,
    IPV4 => 4,
    TCP => 6,
    ST => 7,
    EGP => 8,
    PIGP => 9,
    RCCMON => 10,
    NVPII => 11,
    PUP => 12,
    ARGUS => 13,
    EMCON => 14,
    XNET => 15,
    CHAOS => 16,
    UDP => 17,
    MUX => 18,
    MEAS => 19,
    HMP => 20,
    PRM => 21,
    IDP => 22,
    TRUNK1 => 23,
    TRUNK2 => 24,
    LEAF1 => 25,
    LEAF2 => 26,
    RDP => 27,
    IRTP => 28,
    TP => 29,
    BLT => 30,
    NSP => 31,
    INP => 32,
    SEP => 33,
    '3PC' => 34,
    IDPR => 35,
    XTP => 36,
    DDP => 37,
    CMTP => 38,
    TPXX => 39,
    IL => 40,
    IPV6 => 41,
    SDRP => 42,
    ROUTING => 43,
    FRAGMENT => 44,
    IDRP => 45,
    RSVP => 46,
    GRE => 47,
    MHRP => 48,
    BHA => 49,
    ESP => 50,
    AH => 51,
    INLSP => 52,
    SWIPE => 53,
    NHRP => 54,
    MOBILE => 55,
    TLSP => 56,
    SKIP => 57,
    IPV6_ICMP => 58,
    ICMPV6 => 58,
    NONE => 59,
    DSTOPTS => 60,
    AHIP => 61,
    CFTP => 62,
    HELLO => 63,
    SATEXPAK => 64,
    KRYPTOLAN => 65,
    RVD => 66,
    IPPC => 67,
    ADFS => 68,
    SATMON => 69,
    VISA => 70,
    IPCV => 71,
    CPNX => 72,
    CPHB => 73,
    WSN => 74,
    PVP => 75,
    BRSATMON => 76,
    ND => 77,
    WBMON => 78,
    WBEXPAK => 79,
    EON => 80,
    VMTP => 81,
    SVMTP => 82,
    VINES => 83,
    TTP => 84,
    IGP => 85,
    DGP => 86,
    TCF => 87,
    IGRP => 88,
    OSFIGP => 89,
    SRPC => 90,
    LARP => 91,
    MTP => 92,
    AX25 => 93,
    IPEIP => 94,
    MICP => 95,
    SCCSP => 96,
    ETHERIP => 97,
    ENCCAP => 98,
    APES => 99,
    GMTP => 100,
    PIM => 103,
    IPCOMP => 108,
    CARP => 112,
    PGM => 113,
    SCTP => 132,
    MH => 135,
    UDPLITE => 136,
    MPLS => 137,
    HIP => 139,
    SHIM6 => 140,
    PFSYNC => 240,
    OLD_DIVERT => 254,
    RAW => 255,
    MAX => 256,
    DONE => 257,
    DIVERT => 258,
    SEND => 259,
    SPACER => 32767,
  );
  IPPROTO;
}
!! ($*KERNEL.name eq 'openbsd' ?? do {
  my enum IPPROTO (
    IP => 0,
    HOPOPTS => 0,
    ICMP => 1,
    IGMP => 2,
    GGP => 3,
    IPIP => 4,
    IPV4 => 4,
    TCP => 6,
    EGP => 8,
    PUP => 12,
    UDP => 17,
    IDP => 22,
    TP => 29,
    IPV6 => 41,
    ROUTING => 43,
    FRAGMENT => 44,
    RSVP => 46,
    GRE => 47,
    ESP => 50,
    AH => 51,
    MOBILE => 55,
    ICMPV6 => 58,
    NONE => 59,
    DSTOPTS => 60,
    EON => 80,
    ETHERIP => 97,
    ENCCAP => 98,
    PIM => 103,
    IPCOMP => 108,
    CARP => 112,
    MPLS => 137,
    PFSYNC => 240,
    RAW => 255,
    MAX => 256,
    DONE => 257,
    DIVERT => 258,
  );
  IPPROTO;
}
!! { #macosx
  my enum IPPROTO (
    IP => 0,
    HOPOPTS => 0,
    ICMP => 1,
    IGMP => 2,
    GGP => 3,
    IPIP => 4,
    IPV4 => 4,
    TCP => 6,
    ST => 7,
    EGP => 8,
    PIGP => 9,
    RCCMON => 10,
    NVPII => 11,
    PUP => 12,
    ARGUS => 13,
    EMCON => 14,
    XNET => 15,
    CHAOS => 16,
    UDP => 17,
    MUX => 18,
    MEAS => 19,
    HMP => 20,
    PRM => 21,
    IDP => 22,
    TRUNK1 => 23,
    TRUNK2 => 24,
    LEAF1 => 25,
    LEAF2 => 26,
    RDP => 27,
    IRTP => 28,
    TP => 29,
    BLT => 30,
    NSP => 31,
    INP => 32,
    SEP => 33,
    '3PC' => 34,
    IDPR => 35,
    XTP => 36,
    DDP => 37,
    CMTP => 38,
    TPXX => 39,
    IL => 40,
    IPV6 => 41,
    SDRP => 42,
    ROUTING => 43,
    FRAGMENT => 44,
    IDRP => 45,
    RSVP => 46,
    GRE => 47,
    MHRP => 48,
    BHA => 49,
    ESP => 50,
    AH => 51,
    INLSP => 52,
    SWIPE => 53,
    NHRP => 54,
    ICMPV6 => 58,
    NONE => 59,
    DSTOPTS => 60,
    AHIP => 61,
    CFTP => 62,
    HELLO => 63,
    SATEXPAK => 64,
    KRYPTOLAN => 65,
    RVD => 66,
    IPPC => 67,
    ADFS => 68,
    SATMON => 69,
    VISA => 70,
    IPCV => 71,
    CPNX => 72,
    CPHB => 73,
    WSN => 74,
    PVP => 75,
    BRSATMON => 76,
    ND => 77,
    WBMON => 78,
    WBEXPAK => 79,
    EON => 80,
    VMTP => 81,
    SVMTP => 82,
    VINES => 83,
    TTP => 84,
    IGP => 85,
    DGP => 86,
    TCF => 87,
    IGRP => 88,
    OSFIGP => 89,
    SRPC => 90,
    LARP => 91,
    MTP => 92,
    AX25 => 93,
    IPEIP => 94,
    MICP => 95,
    SCCSP => 96,
    ETHERIP => 97,
    ENCCAP => 98,
    APES => 99,
    GMTP => 100,
    PIM => 103,
    IPCOMP => 108,
    PGM => 113,
    SCTP => 132,
    DIVERT => 254,
    RAW => 255,
    MAX => 256,
    DONE => 257,
  );
  IPPROTO;
}
)))));

constant IP is export(:IP) = $*KERNEL.name eq 'linux' ?? do {
  my enum IP (
    TOS => 1,
    TTL => 2,
    HDRINCL => 3,
    OPTIONS => 4,
    ROUTER_ALERT => 5,
    RECVOPTS => 6,
    RETOPTS => 7,
    PKTINFO => 8,
    PKTOPTIONS => 9,
    PMTUDISC => 10,
    MTU_DISCOVER => 10,
    RECVERR => 11,
    RECVTTL => 12,
    RECVTOS => 13,
    MTU => 14,
    FREEBIND => 15,
    IPSEC_POLICY => 16,
    XFRM_POLICY => 17,
    PASSEC => 18,
    TRANSPARENT => 19,
    MAX_MEMBERSHIPS => 20,
    ORIGDSTADDR => 20,
    RECVORIGDSTADDR => 20,
    MINTTL => 21,
    NODEFRAG => 22,
    CHECKSUM => 23,
    BIND_ADDRESS_NO_PORT => 24,
    RECVFRAGSIZE => 25,
    MULTICAST_IF => 32,
    MULTICAST_TTL => 33,
    MULTICAST_LOOP => 34,
    ADD_MEMBERSHIP => 35,
    DROP_MEMBERSHIP => 36,
    UNBLOCK_SOURCE => 37,
    BLOCK_SOURCE => 38,
    ADD_SOURCE_MEMBERSHIP => 39,
    DROP_SOURCE_MEMBERSHIP => 40,
    MSFILTER => 41,
    MULTICAST_ALL => 49,
  );
  IP;
}
!! ($*KERNEL.name eq any('netbsd') ?? do {
  my enum IP (
    OPTIONS => 1,
    HDRINCL => 2,
    TOS => 3,
    TTL => 4,
    RECVOPTS => 5,
    RECVRETOPTS => 6,
    RECVDSTADDR => 7,
    SENDSRCADDR => 7,
    RETOPTS => 8,
    MULTICAST_IF => 9,
    MULTICAST_TTL => 10,
    MULTICAST_LOOP => 11,
    ADD_MEMBERSHIP => 12,
    DROP_MEMBERSHIP => 13,
    PORTALGO => 18,
    PORTRANGE => 19,
    RECVIF => 20,
    ERRORMTU => 21,
    IPSEC_POLICY => 22,
    RECVTTL => 23,
    MINTTL => 24,
    PKTINFO => 25,
    RECVPKTINFO => 26,
  );
  IP;
}
!! ($*KERNEL.name eq any('dragonflybsd') ?? do {
  my enum IP (
    OPTIONS => 1,
    HDRINCL => 2,
    TOS => 3,
    TTL => 4,
    RECVOPTS => 5,
    RECVRETOPTS => 6,
    RECVDSTADDR => 7,
    RETOPTS => 8,
    MULTICAST_IF => 9,
    MULTICAST_TTL => 10,
    MULTICAST_LOOP => 11,
    ADD_MEMBERSHIP => 12,
    DROP_MEMBERSHIP => 13,
    MULTICAST_VIF => 14,
    RSVP_ON => 15,
    RSVP_OFF => 16,
    RSVP_VIF_ON => 17,
    RSVP_VIF_OFF => 18,
    PORTRANGE => 19,
    RECVIF => 20,
    RECVTTL => 65,
    MINTTL => 66,
  );
  IP;
}
!! ($*DISTRO.is-win() ?? do {
  my enum IP (
    OPTIONS => 1,
    HDRINCL => 2,
    TOS => 3,
    TTL => 4,
    MULTICAST_IF => 9,
    MULTICAST_TTL => 10,
    MULTICAST_LOOP => 11,
    ADD_MEMBERSHIP => 12,
    DROP_MEMBERSHIP => 13,
    DONTFRAGMENT => 14,
    ADD_SOURCE_MEMBERSHIP => 15,
    DROP_SOURCE_MEMBERSHIP => 16,
    BLOCK_SOURCE => 17,
    UNBLOCK_SOURCE => 18,
    PKTINFO => 19,
    HOPLIMIT => 21,
    RECEIVE_BROADCAST => 22,
    RECVIF => 24,
    RECVDSTADDR => 25,
    IFLIST => 28,
    ADD_IFLIST => 29,
    DEL_IFLIST => 30,
    UNICAST_IF => 31,
    RTHDR => 32,
    TECVRTHDR => 38,
  );
  IP;
}
!! ($*KERNEL.name eq 'freebsd' ?? do {
  my enum IP (
    OPTIONS => 1,
    HDRINCL => 2,
    TOS => 3,
    TTL => 4,
    RECVOPTS => 5,
    RECVRETOPTS => 6,
    RECVDSTADDR => 7,
    SENDSRCADDR => 7,
    RETOPTS => 8,
    MULTICAST_IF => 9,
    MULTICAST_TTL => 10,
    MULTICAST_LOOP => 11,
    ADD_MEMBERSHIP => 12,
    DROP_MEMBERSHIP => 13,
    MULTICAST_VIF => 14,
    RSVP_ON => 15,
    RSVP_OFF => 16,
    RSVP_VIF_ON => 17,
    RSVP_VIF_OFF => 18,
    PORTRANGE => 19,
    RECVIF => 20,
    IPSEC_POLICY => 21,
    ONESBCAST => 23,
    BINDANY => 24,
    BINDMULTI => 25,
    RSS_LISTEN_BUCKET => 26,
    ORIGDSTADDR => 27,
    RECVORIGDSTADDR => 27,
    RECVTTL => 65,
    MINTTL => 66,
    DONTFRAG => 67,
    RECVTOS => 68,
    ADD_SOURCE_MEMBERSHIP => 70,
    DROP_SOURCE_MEMBERSHIP => 71,
    BLOCK_SOURCE => 72,
    UNBLOCK_SOURCE => 73,
    MSFILTER => 74,
  );
  IP;
}
!! ($*KERNEL.name eq 'openbsd' ?? do {
  my enum IP (
    OPTIONS => 1,
    HDRINCL => 2,
    TOS => 3,
    TTL => 4,
    RECVOPTS => 5,
    RECVRETOPTS => 6,
    RECVDSTADDR => 7,
    SENDSRCADDR => 7,
    RETOPTS => 8,
    MULTICAST_IF => 9,
    MULTICAST_TTL => 10,
    MULTICAST_LOOP => 11,
    ADD_MEMBERSHIP => 12,
    DROP_MEMBERSHIP => 13,
    PORTRANGE => 19,
    AUTH_LEVEL => 20,
    RECVIF => 30,
    RECVTTL => 31,
    MINTTL => 32,
    RECVDSTPORT => 33,
    PIPEX => 34,
    RECVRTABLE => 35,
    IPSECFLOWINFO => 36,
    IPDEFTTL => 37,
  );
  IP;
}
!! { #macosx
  my enum IP (
    OPTIONS => 1,
    HDRINCL => 2,
    TOS => 3,
    TTL => 4,
    RECVOPTS => 5,
    RECVRETOPTS => 6,
    RECVDSTADDR => 7,
    SENDSRCADDR => 7,
    RETOPTS => 8,
    MULTICAST_IF => 9,
    MULTICAST_TTL => 10,
    MULTICAST_LOOP => 11,
    ADD_MEMBERSHIP => 12,
    DROP_MEMBERSHIP => 13,
    MULTICAST_VIF => 14,
    RSVP_ON => 15,
    RSVP_OFF => 16,
    RSVP_VIF_ON => 17,
    RSVP_VIF_OFF => 18,
    PORTRANGE => 19,
    RECVIF => 20,
    IPSEC_POLICY => 21,
    FAITH => 22,
    STRIPHDR => 23,
    RECVTTL => 24,
    BOUND_IF => 25,
    PKTINFO => 26,
    RECVPKTINFO => 26,
    RECVTOS => 27,
    RECVORIGDSTADDR => 27,
    ADD_SOURCE_MEMBERSHIP => 70,
    DROP_SOURCE_MEMBERSHIP => 71,
    BLOCK_SOURCE => 72,
    UNBLOCK_SOURCE => 73,
    MSFILTER => 74,
  );
  IP;
}
)))));

