FROM archlinux
WORKDIR /solarized
COPY . .
RUN pacman -Syu --noconfirm
RUN pacman -S luarocks neovim gcc lua51 --noconfirm
RUN luarocks install luacheck && luarocks --lua-version=5.1 install vusted
CMD [ "vusted", "./tests" ]
