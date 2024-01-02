# Mikrotik-Update-recursive-route-from-dhcp-client

This simple script arises from the need to update a recursive route at each renewal of the DHCP-client lease. 
This is a Vodafone FWA connection that releases public IP in DHCP. 
It was not possible to simply flag "add default route" as the customer uses recursive routes and Load balance pcc.
The dhcp is running on the "vlan1038" interface and the route is commented like this: "Static VODAFONE"


Visit the https://foisfabio.it website to discover new guides for configuring Mikrotik devices.
