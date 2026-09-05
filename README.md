# Personal dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
```

### Stow
```
pacman -S stow
```

## Installation

First, clone the repository in your $HOME directory using git:

```
$ git clone git@github.com:floriandelage/dots.git .dots
$ cd .dots
```

then use GNU stow to create symlinks

```
$ stow .
```

You can learn the basics of GNU stow with this [video](https://www.youtube.com/watch?v=y6XCebnB9gs) from Dreams of Autonomy.
