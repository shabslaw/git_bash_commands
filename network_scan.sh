
#!/bin/bash

# Range of IP Addresses to be scanned
network="192.168.110."

# Iterate from IP Address 192.168.110.254
for host in {1..254}
do
    # Construct IP Address
    ip=$network$host

    # Send Ping request
    ping -c 1 -w 1 $ip >> results.txt

    #check exit code
    if [ $? -eq 0 ]
    then
        echo "$ip Successful"
        echo $ip  >> live_hosts.txt
    else
        echo "$ip Not Successful"
    fi
done
