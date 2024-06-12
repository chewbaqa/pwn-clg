from scapy.all import *

pckt = Ether(src=get_if_hwaddr("eth0"), dst="ff:ff:ff:ff:ff:ff") / IP(
    src="10.0.0.2", dst="10.0.0.3", proto=0xFF
)
sendp(pckt, iface="eth0")
