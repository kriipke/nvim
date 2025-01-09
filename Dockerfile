FROM ubuntu:latest

RUN apt -y update && apt install -y curl git 

RUN curl -Lo /tmp/nvim.tar.gz https://gitlab.b-data.ch/neovim/neovim/-/releases/v0.10.3/downloads/builds/nvim-linux-arm64.tar.gz
RUN mkdir /tmp/nvim && cd /tmp/nvim && tar -xzf /tmp/nvim.tar.gz --strip=1
RUN pwd && find . && mv /tmp/nvim/bin/nvim /usr/bin/ && mv /tmp/nvim/lib/nvim /usr/lib/ && mv /tmp/nvim/share/nvim /usr/share/

#RUN curl -LO https://github.com/neovim/neovim/releases/download/v0.10.3/nvim-macos-arm64.tar.gz
#RUN tar -xzf nvim-macos-arm64.tar.gz
#RUN mv ./nvim-macos-arm64/bin/nvim /usr/bin/ && mv ./nvim-macos-arm64/share/nvim /usr/share/

FROM ubuntu:latest
RUN apt -y update && apt install -y curl git lua5.1 build-essential && chmod u+s,o+x /usr/bin/apt && chmod u+s,o+x /usr/bin/apt
COPY --from=0 /usr/bin/nvim /usr/bin/nvim
COPY --from=0 /usr/share/nvim /usr/share/nvim
RUN useradd -m -s /bin/bash user && mkdir /src && chown user:user /src
USER user
RUN mkdir /home/user/.config && git clone https://github.com/kriipke/nvim.git /home/user/.config/nvim
RUN nvim --headless "+" +qa 
RUN nvim --headless "+Lazy! sync" +qa
RUN nvim --headless "+Lazy! update" +qa
WORKDIR ["/src"]
ENTRYPOINT ["nvim"]

#CMD ["--version"]

