# 💤 LazyVim Configuration

Build on standard template for a [LazyVim](https://github.com/LazyVim/LazyVim). conofiguration.
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# Usage

  $ docker build -t nvim:custom .
  $ alias nvim='docker run -v "$({git rev-parse --is-inside-work-tree &>/dev/null && git rev-parse --show-toplevel} || realpath .):/src" -w /src --rm -it nvim:custom'
  $ nvim
