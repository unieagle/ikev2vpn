# ikev2vpn

## instruction:
https://hub.docker.com/r/gaomd/ikev2-vpn-server/

1. clone this repo

2. run the following cmd to start the service:

    ```
    docker run -d --name ikev2-vpn-server --privileged -p 500:500/udp -p 4500:4500/udp gaomd/ikev2-vpn-server:0.3.0
    ```
  
    Or, just run `./start.sh`

3. run the following cmd to generate `.mobileconfig` file used by iOS or MacOS to connect:

    ```
    docker run -i -t --rm --volumes-from ikev2-vpn-server -e "HOST=vpn1.example.com" gaomd/ikev2-vpn-server:0.3.0 generate-mobileconfig > ikev2-vpn.mobileconfig
    ```
    
    Note: change the `vpn1.example.com` to your domain or just use ip address

4. download the generated `.mobileconfig` file, install them in iOS or MacOS to connect the vpn.

    You may need to disable the `on Demond Connection` option in VPN settings, or it will be always connected.
  
## credit:
https://hub.docker.com/r/gaomd/ikev2-vpn-server/
