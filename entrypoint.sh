#!/bin/bash

nohup /gost -L socks5://:1080 2>&1 > /dev/null &
nohup /bridge server 8080 $URL $AUTH 2>&1 > /dev/null &
