# Taurus Olson's dotfiles

These are my dotfiles. They are based on Zach Holman's [dotfiles](https://github.com/holman/dotfiles).
If you want to know more, I highly recommend you his [blog post](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

The idea is simple, instead of having a configuration with the following structure:

    config/
    ├── functions.zsh
    │   ├── python section
    │   └── vim section 
    │
    ├── completion.zsh
    │   └── git section 
    │
    └── aliases.zsh
        ├── git section
        ├── python section
        └── vim section 

we have this structure:

    config/
    ├── git/
    │   ├── aliases.zsh
    │   └── completion.zsh
    │
    ├── python/
    │   ├── aliases.zsh
    │   └── functions.zsh
    │
    └── vim/
        └── aliases.zsh

The benefits of this new organization:
    * it allows to add or remove new directories for your tools like modules
    * we don't need to dive into a big file to find the section we're looking for
    * it is easier to share


## Install

```
script/bootstrap
```


## Usage

```
dotty
```


