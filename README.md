# Dotfiles

My personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

**Use at your own risk.**

## What's Included

- **Shell**: zsh configuration
- **Terminal**: kitty, wezterm configs
- **Window Manager**: Hyprland (Wayland), spectrwm configs
- **Editor**: Zed settings
- **Multiplexer**: tmux, zellij configs
- **Launcher**: Rofi configuration and scripts
- **Misc**: Git config, IRB config, conky configs

## Setup

### First-Time Setup

1. Install chezmoi:
```bash
# Arch Linux
sudo pacman -S chezmoi

# Other systems
sh -c "$(curl -fsLS get.chezmoi.io)"
```

2. Initialize chezmoi with this repository:
```bash
chezmoi init https://github.com/yourusername/dotfiles.git
```

3. Preview what would be changed:
```bash
chezmoi diff
```

4. Apply the dotfiles:
```bash
chezmoi apply
```

### Daily Workflow

#### Editing Files

Edit files in the source directory:
```bash
# Edit a file (opens in $EDITOR)
chezmoi edit ~/.zshrc

# Or edit directly in the source
cd ~/.local/share/chezmoi  # or ~/work/dotfiles if you symlinked it
vim dot_zshrc
```

#### Applying Changes

After editing:
```bash
# Preview changes
chezmoi diff

# Apply changes to home directory
chezmoi apply
```

#### Updating from Home Directory

If you edited a file in your home directory and want to update the source:
```bash
# Add the file to chezmoi's source
chezmoi add ~/.zshrc
```

#### Syncing with Git

```bash
cd $(chezmoi source-path)  # Navigate to source directory
git status
git add .
git commit -m "Update zshrc"
git push
```

On another machine:
```bash
chezmoi update  # Pulls from git and applies
```

## Chezmoi File Naming

Chezmoi uses special prefixes to determine target locations:

- `dot_filename` → `.filename` in home directory
- `dot_config/` → `.config/` directory
- `bin/` → `bin/` directory (no prefix needed for non-dot directories)

## Useful Commands

```bash
# List all managed files
chezmoi managed

# See what would change
chezmoi diff

# Apply all changes
chezmoi apply

# Update from repo and apply
chezmoi update

# Check for potential issues
chezmoi verify

# Get the source directory path
chezmoi source-path

# Re-add a file (useful after manual edits)
chezmoi add ~/.gitconfig
```

## Directory Structure

```
~/work/dotfiles/
├── bin/                   # Scripts (→ ~/bin/)
├── dot_config/           # XDG config (→ ~/.config/)
│   ├── hypr/             # Hyprland config
│   ├── kitty/            # Kitty terminal
│   ├── rofi/             # Rofi launcher
│   ├── zed/              # Zed editor
│   └── zellij/           # Zellij multiplexer
├── dot_zshrc             # Zsh config (→ ~/.zshrc)
├── dot_gitconfig         # Git config (→ ~/.gitconfig)
├── dot_tmux.conf         # Tmux config (→ ~/.tmux.conf)
├── dot_wezterm.lua       # Wezterm config (→ ~/.wezterm.lua)
├── dot_spectrwm.conf     # Spectrwm config (→ ~/.spectrwm.conf)
└── .chezmoiignore        # Files to ignore (README, .git, etc.)
```

## Notes

- The actual source repository is located at `~/.local/share/chezmoi` (symlinked to `~/work/dotfiles`)
- Changes must be made in the source directory, not in your home directory
- Always preview with `chezmoi diff` before applying changes
- Commit and push changes to keep your dotfiles synced across machines

## Learn More

- [Chezmoi Documentation](https://www.chezmoi.io/user-guide/command-overview/)
- [Chezmoi Quick Start](https://www.chezmoi.io/quick-start/)
