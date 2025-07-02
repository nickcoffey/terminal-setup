# My Personal Terminal Setup
This repo holds the config files to replicate my terminal dev setup.

## Tools used
- [Homebrew](https://brew.sh/)
- [Ghostty](https://ghostty.org/)
- [zsh](https://www.zsh.org/)
- [oh-my-zsh](https://ohmyz.sh/)
- [tmux](https://github.com/tmux/tmux/wiki)
- [tmux plugin manager](https://github.com/tmux-plugins/tpm/)
- [neovim](https://neovim.io/)
- [lazygit](https://github.com/jesseduffield/lazygit)

## Config file location
- ghostty/config -> `~/.config/ghostty/config`
- .zshrc -> `~/.zshrc`
- tmux.conf -> `~/.config/tmux/tmux.conf`
- tmux-theme-switch.sh -> `~/bin/tmux-theme-switch.sh`
    - make sure to run `chmod +x ~/bin/tmux-theme-switch.sh`
- nvim/ -> `~/.config/nvim/`
- lazygit/config.yml -> `~/.config/lazygit/config.yml`

## Catppuccin Tmux Theme Switching Mods
In order for tmux to be able to switch catppuccin themes some files need to be tweaked in the 2.1.2 release.

- All themes in `~/.config/tmux/plugins/catppuccin/tmux/themes` need to be updated to change all lines with `set -ogq` to `set -gq`.
- The following 2 lines in `~/.config/tmux/plugins/catppuccin/tmux/utils` need to be updated to remove the `-o` as well.
    - `set -ogqF "@catppuccin_status_${MODULE_NAME}_icon_fg" "#{E:@thm_crust}"` -> `set -gqF "@catppuccin_status_${MODULE_NAME}_icon_fg" "#{E:@thm_crust}"`
    - `set -ogqF "@catppuccin_status_${MODULE_NAME}_text_fg" "#{E:@thm_fg}"` -> `set -gqF "@catppuccin_status_${MODULE_NAME}_text_fg" "#{E:@thm_fg}"`
