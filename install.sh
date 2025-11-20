#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DOTFILES_DIR"

echo "Installing dotfiles from $DOTFILES_DIR"

# Function to create symlink with backup
link_file() {
    local src="$1"
    local dest="$2"

    if [ -e "$dest" ] || [ -L "$dest" ]; then
        if [ -L "$dest" ]; then
            local current_target=$(readlink "$dest")
            if [ "$current_target" = "$src" ]; then
                echo "  ✓ $dest already linked correctly"
                return
            fi
        fi
        echo "  → Backing up existing $dest to ${dest}.backup"
        mv "$dest" "${dest}.backup"
    fi

    ln -sf "$src" "$dest"
    echo "  ✓ Linked $dest → $src"
}

# Link all dot_* files and directories (except dot_config)
for item in dot_*; do
    [ -e "$item" ] || continue
    [ "$item" = "dot_config" ] && continue

    target_name=$(echo "$item" | sed 's/^dot_/./')
    link_file "$DOTFILES_DIR/$item" "$HOME/$target_name"
done

# Link contents of dot_config/ to ~/.config/
if [ -d "dot_config" ]; then
    mkdir -p "$HOME/.config"
    for item in dot_config/*; do
        [ -e "$item" ] || continue
        basename=$(basename "$item")
        link_file "$DOTFILES_DIR/$item" "$HOME/.config/$basename"
    done
fi

echo ""
echo "✓ Dotfiles installation complete!"
