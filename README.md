# iterm 相关配置

- iterm
- tmux
- zsh
- zsh theme

## iterm 配置

iTerm -> Preferences -> Profiles -> Other Actions -> Import JSON Profiles...

## zsh 和 tmux 配置

```shell
ln -sf $PWD/robbyrussell.zsh-theme ~/.oh-my-zsh/themes/robbyrussell.zsh-theme
ln -sf $PWD/.zshrc ~/
ln -sf $PWD/.tmux.conf ~/

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

prefix + r 重载 tmux 配置，prefix + I 下载插

