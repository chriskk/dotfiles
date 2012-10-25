# chriskk Dot Files
Local dev environment:

* Mac OS X 10.7 Lion
* Mac OS X 10.8 Mountain Lion
  * Should work in Linux as well
* Bash (default shell)

## Installation

Clone into `~/`

```
$ git clone https://github.com/chriskk/dotfiles.git
```

Local environment variables are set within localrc, which is ignored by git. Add local paths such as `/usr/local` and any aliases to localrc.

```
$ cd dotfiles
dotfiles $ vim localrc
```

Run the installation script, which will symlink the dot files. Existing symlinked dot files are not touched.

```
dotfiles $ rake install
```

Pull in latest vim plugins.

```
dotfiles $ git submodule update --init
```

## Vim
Used as the main console text editor. Selected plugins are geared toward Ruby on Rails development.

  * Pathogen for plugins
  * Installed as git submodules for easier maintenance
    * Reference: [Synchronizing plugins with git submodules and pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
  * [Solarized colorsheme](https://github.com/altercation/vim-colors-solarized)

### Installing additional Vim plugins

```
# Install vim plugins into dotfiles/vim/bundle
$ git submodule add http://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
$ git add .
$ git commit -m "Install vim-fugitive bundle as a submodule."
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
