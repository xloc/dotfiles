# How to use

- install fish/tmux/vim
- `./deploy`
- optional ``chsh -s `which fish` ``
- (for macOS may need to modify /etc/shells)

# By the way
## github configuration
- `sudo apt install git`
- add ssh key
  - `ssh-keygen -t rsa -b 4096 -C "tj-xzx@126.com"`
  - add generated key in github setting page (copy&paste)
  - might need `ssh-add ~/.ssh/id_rsa`
- `git config --global user.name "<user-name>"`
- `git config --global user.email "<email>"`

## update fish to the latest version
```bash
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
```

## prepend fish path
 ```bash
 set -U fish_user_paths /opt/homebrew/bin $fish_user_paths:
 ```

