FROM naturalselect/electronpod:latest
LABEL "Maintainer"="NaturalSelect<2145973003@qq.com>"
USER user
WORKDIR ${HOME}
RUN mkdir Wechat
WORKDIR ${HOME}/Wechat
RUN sudo apt update
RUN sudo apt install -y iproute2 net-tools inetutils-ping
RUN sudo apt install -y libxkbcommon-x11-0 libxcb-glx0 libxcb-randr0 libxcb-icccm4 libxcb-image0 libxcb-xfixes0 libxcb-shape0 libxcb-sync1 libxcb-render-util0 libxcb-keysyms1 libgl1-mesa-dri libgl1-mesa-glx
RUN sudo apt install -y fonts-noto-cjk
# Download wechat
COPY "install.sh" "./install.sh"
RUN ./install.sh
RUN sudo rm -rf /var/lib/apt/lists/*
COPY "entry_point.sh" "./entry_point.sh"
ENTRYPOINT [ "./entry_point.sh" ]