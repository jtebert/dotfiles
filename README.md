# Julia's Dotfiles

User dotfiles for cross-machine compatibility and backup.

This approach comes from [this blog post](https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html) by Anand Iyer.

## Setting up on a new machine

This version avoids issues with conflicts with existing default config files.

Clone into a new (temporary) subdirectory:
```shell
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/jtebert/dotfiles.git tmpdotfiles
```

Move the contents into your home folder:
```shell
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
```

Delete the temporary folder:
```shell
rm -r tmpdotfiles
```
