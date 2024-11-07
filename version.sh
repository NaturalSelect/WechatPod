#!/bin/bash

if test -z ${TAG}
then
    TAG="beta-4.0.0.30"
fi

if test -z ${URL}
then
    URL="https://dldir1v6.qq.com/weixin/Universal/Linux/WeChatLinux_x86_64.deb"
fi