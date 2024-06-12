from scapy.all import *

pckt = Ether(src=get_if_hwaddr("eth0"), dst="ff:ff:ff:ff:ff:ff", type=0xFFFF)
sendp(pckt, iface="eth0")
