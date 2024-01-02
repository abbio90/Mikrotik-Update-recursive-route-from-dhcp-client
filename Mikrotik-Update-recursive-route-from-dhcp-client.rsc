#---------------------------------------------------
# UPDATE-RECURSIVE-ROUTE-FROM-DHCP-CLIENT BY foisfabio.it
# 
# Script:  Dhcp-client-update-recursive-route
#
# Description: This simple script arises from the need to update a recursive route at each renewal of the DHCP-client lease.
# ------------>This is a Vodafone FWA connection that releases public IP in DHCP.
#------------->It was not possible to simply flag "add default route" as the customer uses recursive routes and Load balance pcc.
#------------->The dhcp is running on the "vlan1038" interface and the route is commented like this: "Static VODAFONE"

# Version: 1.0
# RouterOS v.7.12
# Created: 02/01/2024
# Updated: no updated
# Author: Fois Fabio
# Editor: Fois Fabio
# Website: https://foisfabio.it
# Email: consulenza@foisfabio.it


{
:local interface "vlan1038"    
:local GWvodafone [/ip dhcp-client/ get [find where interface=$interface] value-name=gateway]
:put $GWvodafone
/ip route set  [find comment="Static VODAFONE"] gateway=$GWvodafone
}


