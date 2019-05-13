# How to use

- install zsh/tmux/vim
- `git submodule init`
- `git submodule update`
- `./deploy`
- optional ``chsh -s `which zsh` ``

# By the way
## github configuration
- `sudo apt install git`
- add ssh key
  - `ssh-keygen -t rsa -b 4096 -C "tj-xzx@126.com"`
  - add generated key in github setting page (copy&paste)
  - might need `ssh-add ~/.ssh/id_rsa`
- `git config --global user.name "<user-name>"`
- `git config --global user.email "<email>"`
