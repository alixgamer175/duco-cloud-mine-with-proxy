sudo apt install openvpn python3 python3-pip -y
sudo rm -rf /duco
sudo mkdir /duco
sudo cd /duco
sudo wget https://www.vpnbook.com/free-openvpn-account/VPNBook.com-OpenVPN-US1.zip
sudo wget https://raw.githubusercontent.com/revoxhere/duino-coin/master/PC_Miner.py
sudo unzip VPNBook.com-OpenVPN-US1.zip
sudo mkdir -p /dev/net
sudo mknod /dev/net/tun c 10 200
sudo openvpn --config vpnbook-us1-udp25000.ovpn
sudo pip install requests
sudo python3 PC_Miner.py
