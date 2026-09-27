# Personal dotfiles

This directory contains my personal dotfiles.

## Requirements

Ensure you have the following installed on your system, for Arch users:
```bash
sudo pacman -S --needed git stow
```

## Installation

First, clone the repository in your $HOME directory using git:

```bash
$ git clone git@github.com:floriandelage/dots.git $HOME/.dots
$ cd $HOME/.dots
```

then use GNU stow to create symlinks:

```bash
$ stow */
```
