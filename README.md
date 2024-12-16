
# dotfiles

This repository contains my personal dotfiles, including a configuration for Neovim (nvim). The goal of this repo is to easily set up my development environment on any machine by syncing my dotfiles.

## Nvim - Setup Instructions

### 1. Clone the repository

Clone the `dotfiles` repository to your local machine using the following command:

```bash
git clone https://github.com/yourusername/dotfiles.git
```

### 2. Remove existing Neovim config (optional)

```bash
rm -rf ~/.config/nvim
```

### 3. Copy the new config

```bash
cp -r dotfiles/nvim ~/.config/
```

### 4. Start Neovim

```bash
nvim
```
