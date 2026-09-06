# Personal dotfiles

This directory contains my personal dotfiles.

## Requirements

Ensure you have the following installed on your system, for Arch users:
```
sudo pacman -S --needed git stow
```

## Installation

First, clone the repository in your $HOME directory using git:

```
$ git clone git@github.com:floriandelage/dots.git ~/.dots
$ cd ~/.dots
```

then use GNU stow to create symlinks:

```
$ stow */
```
