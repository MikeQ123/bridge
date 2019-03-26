#!/bin/bash
nohup /bridge server 8000 /$BURL $BAUTH 2>&1 > /dev/null &
/gost -L socks5://:1080 -L=http://$GOSTUSER:$GOSTPASSWD@:8080?probe_resist=host:127.0.0.1:8000 
