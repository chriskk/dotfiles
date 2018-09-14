# chriskk Dot Files
Local dev environment:

* Mac OS X 10.7 and above
  * Should work in Linux as well
* Bash (default shell)

## Installation

Clone into `~/`

```
$ git clone https://github.com/chriskk/dotfiles.git
```

Local environment variables are set within localrc, which is ignored by git. Add local paths such as `/usr/local/bin` and any aliases to localrc.

```
$ cd dotfiles
dotfiles $ vim localrc
```

If you want to use homebrew on OS X, then set this path in localrc.

```
export PATH="/usr/local/bin:$PATH"
```

Install git submodules such as vim plugins and zsh theme.
```
dotfiles $ git submodule update --init
```

## Nerd Fonts
Add fonts that contain icons such as for GitHub.
It will be set within iTerm2 and used by Powerlevel9k.

```
dotfiles $ brew tap caskroom/fonts
dotfiles $ brew cask install font-hack-nerd-font
dotfiles $ brew cask install font-droid-sansmono-nerd-font
```

Additional fonts available at
https://github.com/Homebrew/homebrew-cask-fonts

## iTerm2 and Zsh
Install iTerm2 and Zsh, which is an alternative to bash.
```
dotfiles $ brew cask install iterm2
dotfiles $ brew install zsh
```

Change the default shell to Zsh.
```
dotfiles $ chsh -s /bin/zsh
```

Add sytax highlighting and auto suggestions.

```
dotfiles $ brew install zsh-syntax-highlighting
dotfiles $ brew install zsh-autosuggestions
```

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

## Powerlevel9k
Install zsh theme powerlevel9k.

```
dotfiles $ git submodule add https://github.com/bhilburn/powerlevel9k.git zsh-themes
```

