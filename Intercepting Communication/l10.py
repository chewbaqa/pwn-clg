from scapy import all

pckt = (
    Ether(src=get_if_hwaddr("eth0"), dst="ff:ff:ff:ff:ff:ff")
    / IP(src="10.0.0.2", dst="10.0.0.3")
    / TCP(sport=31337, dport=31337, seq=31337, ack=31337, flags="APRSF")
)

sendp(pckt, iface="eth0")
