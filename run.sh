if docker ps -f name=ikev | grep -q ikev ; then
  echo  "The IKEV2 VPN containner is running"
elif docker ps -a -f name-ikev | grep -q ikev; then
  echo "Restarting the VPN container..."
  ./restart.sh
else
  echo "Starting the VPN container the first time..."
  ./start.sh
fi
