# .dotfiles-macos


- Install all the pre requisite dependencies
- Create symlinks by running `links.sh` script
- Install and activate nerd fonts from `install/install-nerd-fonts.sh`

## Dependencies

### Install Iterm2
```code
https://iterm2.com/
```

### ohMyZsh
``` code
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install home brew
```code
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install

### Rust
```code
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### zoxide
```code
cargo install zoxide --locked
```

### fzf
```code
brew install fzf
```

### Docker
```code
https://docs.docker.com/desktop/setup/install/mac-install/
```

### Tmux
```code
brew install tmux
```
- Clone TPM
```code
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
- Open Tmux
- Source File
```sh
tmux source ~/.tmux.conf
```
- Install TPM packages using Prefix + I (Ctrl + A and Shift + I)

### Starship theme
```code
brew install starship
```

### Iterm2 theme
```code
https://draculatheme.com/iterm
```

### NVM
```code
brew install nvm
```

### pyenv
```code
brew install pyenv
```

### thefuck
```code
brew install thefuck
```

## Other installs
