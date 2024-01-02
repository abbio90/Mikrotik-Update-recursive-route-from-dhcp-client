##PASTE TO TERMINAL

/ip dhcp-client
add default-route-distance=4 interface=vlan1038 script="#---------------------------------------------------\r\
    \n# UPDATE-RECURSIVE-ROUTE-FROM-DHCP-CLIENT BY foisfabio.it\r\
    \n# \r\
    \n# Script:  Dhcp-client-update-recursive-route\r\
    \n#\r\
    \n# Description: This simple script arises from the need to update a recursive route at each renewal of the DHCP-client lease.\r\
    \n# ------------>This is a Vodafone FWA connection that releases public IP in DHCP.\r\
    \n#------------->It was not possible to simply flag \"add default route\" as the customer uses recursive routes and Load balance pcc.\r\
    \n#------------->The dhcp is running on the \"vlan1038\" interface and the route is commented like this: \"Static VODAFONE\"\r\
    \n\r\
    \n# Version: 1.0\r\
    \n# RouterOS v.7.12\r\
    \n# Created: 02/01/2024\r\
    \n# Updated: no updated\r\
    \n# Author: Fois Fabio\r\
    \n# Editor: Fois Fabio\r\
    \n# Website: https://foisfabio.it\r\
    \n# Email: consulenza@foisfabio.it\r\
    \n\r\
    \n\r\
    \n{\r\
    \n:local interface \"vlan1038\"    \r\
    \n:local GWvodafone [/ip dhcp-client/ get [find where interface=\$interface] value-name=gateway]\r\
    \n:put \$GWvodafone\r\
    \n/ip route set  [find comment=\"Static VODAFONE\"] gateway=\$GWvodafone\r\
    \n}\r\
    \n" use-peer-dns=no use-peer-ntp=no
