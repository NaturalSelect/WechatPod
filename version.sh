#!/bin/bash

if test -z ${TAG}
then
    TAG="1.0.0"
fi

if test -z ${URL}
then
    URL="https://github.com/lovechoudoufu/wechat_for_linux/releases/download/wechat-beta-%E7%BB%95%E8%BF%87%E7%99%BB%E5%BD%95%E6%A3%80%E6%B5%8B/wechat-beta_1.0.0.145_amd64.fixed.deb"
fi