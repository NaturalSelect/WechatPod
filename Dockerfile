FROM naturalselect/electronpod:latest
LABEL "Maintainer"="NaturalSelect<2145973003@qq.com>"
USER user
WORKDIR ${HOME}
RUN mkdir Wechat
WORKDIR ${HOME}/Wechat
RUN sudo apt update
RUN sudo apt install -y iproute2 net-tools inetutils-ping
RUN sudo apt install -y libxkbcommon-x11-0 libxcb-glx0 libxcb-randr0 libxcb-icccm4 libxcb-image0 libxcb-xfixes0 libxcb-shape0 libxcb-sync1 libxcb-render-util0 libxcb-keysyms1 libgl1-mesa-dri libgl1-mesa-glx
# Download wechat
RUN wget https://github.com/lovechoudoufu/wechat_for_linux/releases/download/wechat-beta-%E7%BB%95%E8%BF%87%E7%99%BB%E5%BD%95%E6%A3%80%E6%B5%8B/wechat-beta_1.0.0.145_amd64.fixed.deb -O wechat.deb
RUN sudo apt install -y ./wechat.deb
RUN sudo rm -rf /var/lib/apt/lists/*
COPY "entry_point.sh" "./entry_point.sh"
ENTRYPOINT [ "./entry_point.sh" ]