#!/bin/bash

docker run \
    --rm \
    -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY \
    -e XMODIFIERS \
    -e GTK_IM_MODULE \
    -e QT_IM_MODULE \
    -e AUDIO_GID="$(getent group audio | cut -d: -f3)" \
    -e VIDEO_GID="$(getent group video | cut -d: -f3)" \
    -e GID="$(id -g)" \
    -e UID="$(id -u)" \
    --userns keep-id\
    --ipc host \
    -e HTTP_PROXY="" \
    -e HTTPS_PROXY="" \
    -e http_proxy=""\
    -e https_proxy=""\
    -e AUDIO_GID="$(getent group audio | cut -d: -f3)" \
    -e VIDEO_GID="$(getent group video | cut -d: -f3)" \
    -v /run/user/$(id -u)/pulse:/run/user/$(id -u)/pulse \
    -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native \
    -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native \
    -v ~/.local/wechat/xwechat:/home/user/.wechat \
    -v ~/.local/wechat/xwechat_files:/home/user/xwechat_files \
    $@ \
    "naturalselect/wechatpod:v1.0.0"