FROM ubuntu:latest as depends

RUN apt -y update && apt install -y curl git 
RUN curl -LO https://github.com/neovim/neovim/releases/download/v0.10.2/nvim-linux64.tar.gz
RUN tar -xzf nvim-linux64.tar.gz
RUN mv ./nvim-linux64/bin/nvim /usr/bin/ && mv ./nvim-linux64/share/nvim /usr/share/

FROM ubuntu:latest as final
# build-essential is needed by treesitter for cc and the like
RUN apt -y update && apt install -y curl git lua5.1 build-essential && chmod u+s,o+x /usr/bin/apt && chmod u+s,o+x /usr/bin/apt
COPY --from=depends /usr/bin/nvim /usr/bin/nvim
COPY --from=depends /usr/share/nvim /usr/share/nvim
RUN useradd -m -s /bin/bash user && mkdir /src && chown user:user /src
USER user
RUN mkdir /home/user/.config && git clone https://github.com/kriipke/nvim.git /home/user/.config/nvim
#RUN nvim --headless "+Lazy! sync" +qa
RUN nvim --headless "+" +qa
#RUN nvim --headless "+Lazy! update" +qa
WORKDIR ["/src"]
ENTRYPOINT ["nvim"]

#CMD ["--version"]
