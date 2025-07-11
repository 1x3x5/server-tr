@echo off

    netsh int ip set global icmpredirects=disabled
    netsh int ip set global sourceroutingbehavior=drop
    netsh int ip set global dhcpmediasense=disabled
    netsh int ip set global mediasenseeventlog=disabled
    netsh int ip set global multicastforwarding=disabled
    netsh int ip set global neighborcachelimit=4096
    netsh int ip set global routecachelimit=4096

    netsh int ipv6 set global dhcpmediasense=disabled
    netsh int ipv6 set global icmpredirects=disabled
    netsh int ipv6 set global sourceroutingbehavior=drop
    netsh int ipv6 6to4 set state disabled
    netsh int ipv6 isatap set state disabled
    netsh interface teredo set state disabled
    netsh interface ipv6 set global randomizeidentifier=disabled
    netsh interface ipv6 set privacy state=disabled

    netsh int tcp set global chimney=enabled
    netsh int tcp set global dca=enabled
    netsh int tcp set global netdma=disabled
    netsh int tcp set global rsc=disabled
    netsh int tcp set global timestamps=disabled
    netsh int tcp set global ecncapability=disabled
    netsh int tcp set global ecn=disabled
    netsh int tcp set global nonsackrttresiliency=disabled
    netsh int tcp set global maxsynretransmissions=2
    netsh int tcp set global fastopen=enabled
    netsh int tcp set global fastopenfallback=enabled
    netsh int tcp set global rss=enabled
    netsh int tcp set global hystart=enabled
    netsh int tcp set global initialRto=1000
    netsh int tcp set heuristics disabled
    netsh int tcp set heuristics wsh=disabled

    netsh int udp set global uro=enabled
    netsh int ipv4 set dynamicport tcp start=1025 num=64511
    netsh int ipv4 set dynamicport udp start=1025 num=64511

pause
