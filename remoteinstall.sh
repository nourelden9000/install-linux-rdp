sudo -i
apt-get update -y
apt-get upgrade -y
apt-get install xrdp -y
apt-get install mate-core mate-desktop-environment mate-notification-daemon -y
sed -i.bak '/fi/a #xrdp multiple users configuration \n mate-session \n' /etc/xrdp/startwm.sh
adduser xrdp ssl-cert
ufw allow 3389/tcp
/etc/init.d/xrdp restart