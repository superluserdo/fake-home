# fake-home

This is a simple set of scripts to take programs that clutter up your `$HOME`
with dotfiles and banish them to a directory that is `$HOME` for only them. The
principle is described in more detail at [https://github.com/superluserdo/fake-home](https://github.com/superluserdo/fake-home)

## `fakehome-banish`: Banish a program

1. Add the directory `$HOME/.local/bin/evil-software` to your `PATH`

2. Run this script with the argument of the name of the executable you want to
banish. The script will create a symlink in `$HOME/.local/bin/evil-software`
pointing to wherever the `fakehome` script is installed. Now running the program
will run the symlink, aka the `fakehome` script.

3. Move any dotfiles associated with the program to
   `$HOME/.local/share/fake-home/`

## `fakehome`

This script just redefines `$HOME` to ~/.local/share/fake-home/, and runs the
original executable

## `fakehome-changesymlinks`:

This script updates any symlinks contained in the original dotfile directories
to point inside the fake `$HOME`. For example, a program `foo` that had a
symlink `~/.foo/bar` pointing to `~/.bar`, this will get updated to point to
`~/.local/share/fake-home/.bar`

----

Example:

* `fakehome-banish steam`

* `mv ~/.steam* ~/.local/share/fake-home/`

* `fakehome-changesymlinks`
