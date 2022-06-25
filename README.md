# chriskk Dot Files
Local dev environment:

* Mac OS X 12.0 and above

## Installation

Clone into `~/`

```
$ git clone https://github.com/chriskk/dotfiles.git
```

Local environment variables are set within localrc, which is ignored by git. Add local paths such as `/opt/homebrew` and any aliases to localrc.

```
$ cd dotfiles
dotfiles $ vim localrc
```

If you want to use homebrew on OS X, then set this path in localrc.

```
export PATH="/opt/homebrew:$PATH"
```

Install git submodules such as vim plugins and zsh theme.
```
dotfiles $ git submodule update --init
```

## Nerd Fonts
Add fonts that contain icons such as for GitHub.
It will be set within iTerm2 and used by Powerlevel10k.

```
dotfiles $ brew tap homebrew/cask-fonts
dotfiles $ brew install font-droid-sans-mono-nerd-font --cask
```

Additional fonts available at
https://github.com/Homebrew/homebrew-cask-fonts

## iTerm2
Install iTerm2 via download or using Homebrew.
```
dotfiles $ brew cask install iterm2
```

Zsh plugins and themes are installed via Antigen.
Edit `zshrc` to add, remove or to change them.

Run the installation script, which will symlink the dot files. Existing symlinked dot files are not touched.

```
dotfiles $ rake install
```

Download iTerm2 color schemes
https://iterm2colorschemes.com

Load iTerm2 preferences from `dotfiles/iTerm2/com.googlecode.iterm2.plist`

## Vim
Used as the main console text editor. Selected plugins are geared toward Ruby on Rails development.

  * Pathogen for plugins
  * Installed as git submodules for easier maintenance
    * Reference: [Synchronizing plugins with git submodules and pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
  * [Solarized colorsheme](https://github.com/altercation/vim-colors-solarized)

Pull in latest vim plugins.
```
dotfiles $ git submodule update --init
```

### Installing additional Vim plugins

```
# Install vim plugins into dotfiles/vim/bundle
dotfiles $ git submodule add http://github.com/tpope/vim-fugitive.git vim/bundle/vim-fugitive
dotfiles $ git add .
dotfiles $ git commit -m "Install vim-fugitive bundle as a submodule."
```
### Upgrading Vim plugin bundles

```
# Upgrading all bundled plugins
$ git submodule foreach git pull origin master
```
```
# Upgrading a specific plugin bundle
$ cd ~/.vim/bundle/fugitive
$ git pull origin master
```

