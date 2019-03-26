#!/bin/bash

nohup /gost -L socks5://:1080 2>&1 > /dev/null &
/bridge server 8080 $URL $AUTH
