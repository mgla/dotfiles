# Dotfiles

I manage my dotfiles in this repository.
I often try out many different, things, mainly to find configurations that works on some of the more broken terminals (hello PuTTY!).

Feel free to use.

## General stuff

The deploy script deploys the configuration:

```
./deploy
```

It overwrites the following files without further notice:
```
.bashrc
.gitconfig
.screenrc
.vimrc
.zprofile
.zshrc
```

It also installs random vim plugins directly from GitHub.
Maybe do not use this directly in security critical context.
