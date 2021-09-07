# Julia's Dotfiles

User dotfiles for cross-machine compatibility and backup.

This approach comes from [this blog post](https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html) by Anand Iyer.

## Recent Changes

The default branch has been changed from `master` to `main`. If you try to pull, it will fail.

To update your local setup accordingly, do the following:

```shell
git checkout master         # Switch to local master branch
git branch -m master main   # Rename the branch to main
git fetch                   # git latest commits and branches
git branch --unset-upstream # Remove tracking connection to origin/master
git branch -u origin/main   # Make new tracking connection to origin/main
```

Source: [Tower](https://www.git-tower.com/learn/git/faq/git-rename-master-to-main/)

## Notes

- This is set up for [ZSH](https://www.zsh.org/). In particular, I use the [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme (installed through https://ohmyz.sh/).
- My ZSH theme configuration uses icons from [Nerd Fonts](https://www.nerdfonts.com/). I'm using the font [Hack](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf), but any Nerd Font from this repository should work.
- The `.zshrc` file already creates the alias for using the `dotfiles` syntax shorthand described below.

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

## How to use

You now have a git repository that you can see from anywhere, aliased to `dotfiles`. So you use the same syntax as `git`, but you replace `git` with `dotfiles`. For example:

```shell
# Add a file to the dotfiles repository
dotfiles add .bashrc
# See changes (this won't show unadded files, or it would contain your whole home folder)
dotfiles status
# Commit changes
dotfiles commit -m "Add bash config"
# Push changes
dotfiles push
```

