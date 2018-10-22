echo "Please type a region: [e.g. nyc1]"
read DOREGION
export DOREGION
echo "$DOREGION"
vagrant up
vagrant ssh -c "cd /home;
		git clone https://github.com/huldumadurin/PingMarker;
		cd PingMarker/src;
		chmod +x PingMarker.sh;
		./PingMarker.sh;"
echo "Please type in IP address:"
read IPADDR
scp -rp root@"$IPADDR":/home/PingMarker/output "$DOREGION-c10"
