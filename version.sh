#!/bin/bash

if test -z ${TAG}
then
    TAG="1.0.0.238"
fi

if test -z ${URL}
then
    URL="https://github.com/lovechoudoufu/wechat_for_linux/releases/download/wechat-beta_1.0.0.238_amd64/wechat-beta_1.0.0.238_amd64_login.deb"
fi