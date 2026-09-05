# Personal dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
sudo pacman -S git
```

### Stow
```
sudo pacman -S stow
```

## Installation

First, clone the repository in your $HOME directory using git

```
$ git clone git@github.com:floriandelage/dots.git .dots
$ cd .dots
```

then use GNU stow to create symlinks

```
$ stow .
```
