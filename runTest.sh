echo "Please type a region: [e.g. nyc1]"
read DOREGION
export DOREGION
echo "$DOREGION"
vagrant up
vagrant ssh -c "cd /vagrant/src;
		        chmod +x PingMarker.sh;
		        ./PingMarker.sh;"
echo "Please type in IP address:"
read IPADDR
scp -rp root@"$IPADDR":/vagrant/output "$DOREGION-c50"

vagrant destroy -f
