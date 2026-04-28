# chriskk Dot Files
Local dev environment for **Rust** and **JavaScript** / TypeScript work.

* **macOS** (recent release). Paths assume **Homebrew on Apple Silicon** (`/opt/homebrew`); on Intel use `/usr/local` or your own `PATH` in `~/.localrc`.
* **Ruby + Rake** — the install task is `rake install`. macOS often ships Ruby; if `rake` is missing, run `gem install rake` or use Homebrew’s `ruby`.

## Installation

Clone into `~/` so the repo path is `~/dotfiles` (this matches `zshrc`, which sources `~/dotfiles/zsh/antigen/antigen.zsh`).

```
$ git clone --recurse-submodules https://github.com/chriskk/dotfiles.git
```

If you already cloned without submodules, run `git submodule update --init --recursive` from `~/dotfiles`.

Local environment variables live in `~/.localrc` (create it in your home directory; it is not part of this repo). `zshrc` and `bashrc` both source that file when it exists. Add local paths such as `/opt/homebrew` and any machine-only aliases there.

```
$ vim ~/.localrc
```

If you use Homebrew on Apple Silicon, a typical first line is:

```
export PATH="/opt/homebrew:$PATH"
```

**Submodules** include Vim plugins under `vim/bundle/` and **Antigen** under `zsh/antigen/`. The zsh theme (Powerlevel10k) and other zsh plugins are **not** submodules; Antigen downloads those when you start zsh.

```
dotfiles $ git submodule update --init --recursive
```

## Install and set Powerline font MesloLGS NF
Add fonts that contain icons such as for Apple and git.
Reference https://github.com/kalaschnik/meslolgs-nf-template

## iTerm2
Install iTerm2 via download or using Homebrew.

Zsh plugins and themes are installed via Antigen.
Edit `zshrc` to add, remove or to change them.

Run the install task: most dotfiles are **symlinked** from `~/dotfiles` into `~` (e.g. `bash/` → `~/.bash`, `vim/` → `~/.vim`). If a target already exists and differs, Rake **asks** before replacing it. **Exception:** `zshrc` is **copied** to `~/.zshrc` (not symlinked), so repo edits are not picked up until you re-copy or edit `~/.zshrc` directly.

```
dotfiles $ rake install
```

Download iTerm2 color schemes
https://iterm2colorschemes.com

Load iTerm2 profile from `dotfiles/iTerm2/iterm2-chriskk.json`

## macOS Terminal.app
Solarized theme file: `Terminal/Solarized Dark Higher Contrast.terminal` (double-click to import, or open from Terminal → Settings → Profiles).

Additional themes available at
https://github.com/lysyi3m/macos-terminal-themes

## Vim
**Rust:** [rust.vim](https://github.com/rust-lang/rust.vim) is bundled; `g:rust_recommended_style` is on in `vimrc` (4-space / rustfmt-style indents for `*.rs`). **JS/TS:** global defaults are 2 spaces; use **EditorConfig** or another bundle if you want stricter per-project rules.

  * [Pathogen](https://github.com/tpope/vim-pathogen) + submodules (`.gitmodules`): [vimcasts](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
  * Colors: **[vim-solarized8](https://github.com/lifepillar/vim-solarized8)** (`solarized8_high`). [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) is unused legacy in the tree.

Pull in plugins:

```
dotfiles $ git submodule update --init --recursive
```

### Installing additional Vim plugins

```
dotfiles $ git submodule add https://github.com/leafgarland/typescript-vim.git vim/bundle/typescript-vim
dotfiles $ git add .gitmodules vim/bundle/typescript-vim && git commit -m "Add typescript-vim"
```

### Upgrading Vim plugin bundles

```
$ git submodule foreach git pull
$ cd vim/bundle/rust.vim && git pull
```

Or the same paths under `~/.vim/bundle/` if `~/.vim` is symlinked here.

