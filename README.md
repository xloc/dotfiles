# How to use

- install fish/tmux/vim
- `./deploy`
- optional ``chsh -s `which fish` ``
- (for macOS may need to modify /etc/shells)

# By the way
## setup git
- `sudo apt install git`
- add ssh key
  - `ssh-keygen -t ed25519 -C "<email>"`
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
set -U fish_user_paths /opt/homebrew/bin $fish_user_paths
```

## fisher tools
```bash
# install curl
fisher install jethrokuan/z
fisher install edc/bass
```

## git aliases
```bash
git config --global alias.co checkout
git config --global alias.logg log --oneline --graph
git config --global alias.bn rev-parse --abbrev-ref HEAD
git config --global alias.logt log --pretty=format:"%C(yellow)%h %C(cyan)%cd %Cblue%<(8,trunc)%aE%C(auto)%d %Creset%s" --date=format:"%m-%d/%H:%M"
```
