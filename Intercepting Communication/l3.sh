# ===== Welcome to Intercepting Communication! =====
# In this series of challenges, you will be working within a virtual network in order to intercept networked traffic.
# In this challenge you will find and connect to a remote host.
# The remote host is somewhere on the `10.0.0.0/24` subnetwork, listening on port `31337`.

nmap -sX 10.0.0.0/24 -p 31337

# Starting Nmap 7.80 ( https://nmap.org ) at 2024-06-11 06:57 UTC
# Nmap scan report for 10.0.0.107
# Host is up (0.000033s latency).

# PORT      STATE         SERVICE
# 31337/tcp open|filtered Elite
# MAC Address: FE:15:48:45:C9:D7 (Unknown)

# Nmap scan report for 10.0.0.2
# Host is up (0.000045s latency).

# PORT      STATE  SERVICE
# 31337/tcp closed Elite

# Nmap done: 256 IP addresses (2 hosts up) scanned in 37.01 seconds

nc 10.0.0.107 31337