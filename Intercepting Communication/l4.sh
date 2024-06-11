# ===== Welcome to Intercepting Communication! =====
# In this series of challenges, you will be working within a virtual network in order to intercept networked traffic.
# In this challenge you will find and connect to a remote host.
# The remote host is somewhere on the `10.0.0.0/16` subnetwork, listening on port `31337`.

nmap -sX 10.0.0.0/16 -p 31337 -T5 --min-rate 2000 --max-retries 0

# Nmap scan report for 10.0.120.150
# Host is up (0.000043s latency).

# PORT      STATE         SERVICE
# 31337/tcp open|filtered Elite
# MAC Address: A6:BC:A0:0F:EE:A1 (Unknown)

# Nmap done: 65536 IP addresses (2 hosts up) scanned in 68.12 seconds

nc 10.0.120.150 31337
