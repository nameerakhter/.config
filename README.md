# Neovim Configuration

## Introduction

This Neovim configuration is a fork of the [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) repository. It includes various plugins to enhance the functionality and user experience of Neovim. Below is a detailed explanation of the plugins used in this configuration.

## Plugins

### Neo-tree

**Plugin:** `nvim-neo-tree/neo-tree.nvim`

Neo-tree is a Neovim plugin to browse the file system. It provides a tree-like view of your file system and allows you to navigate and manage files easily.

**Dependencies:**
- `nvim-lua/plenary.nvim`
- `nvim-tree/nvim-web-devicons` (recommended)
- `MunifTanjim/nui.nvim`

**Key Mappings:**
- `\`: Reveal the current file in the Neo-tree
- `\`: Close the Neo-tree window

### Treesitter

**Plugin:** `nvim-treesitter/nvim-treesitter`

Treesitter provides advanced syntax highlighting, code navigation, and other features using Tree-sitter. It ensures that various programming languages are supported and provides better code understanding.

**Languages Installed:**
- Lua
- Python
- JavaScript
- TypeScript
- Vimdoc
- Vim
- Regex
- Toml
- JSON
- Go
- Gitignore
- Make
- CMake
- Markdown
- Markdown Inline
- Bash
- TSX
- CSS
- HTML

**Features:**
- Auto-install languages that are not installed
- Highlighting
- Indentation

### Nvim-tree

**Plugin:** `nvim-tree/nvim-tree.lua`

Nvim-tree is another file explorer for Neovim. It provides a tree-like view of your file system and allows you to navigate and manage files easily.

**Dependencies:**
- `kyazdani42/nvim-web-devicons`

**Key Mappings:**
- `<leader>e`: Toggle NvimTree
- `<leader>er`: Refresh NvimTree

### Miscellaneous Plugins

**Which-key**

**Plugin:** `folke/which-key.nvim`

Which-key provides hints for keybindings in Neovim, making it easier to remember and use keybindings.

**Nvim-autopairs**

**Plugin:** `windwp/nvim-autopairs`

Nvim-autopairs automatically closes parentheses, brackets, quotes, etc., making it easier to write code.

**Todo-comments**

**Plugin:** `folke/todo-comments.nvim`

Todo-comments highlights TODO, notes, and other annotations in comments, making it easier to track tasks and notes in your code.

**Nvim-colorizer**

**Plugin:** `norcalli/nvim-colorizer.lua`

Nvim-colorizer is a high-performance color highlighter that highlights color codes in your code.

### Lualine

**Plugin:** `nvim-lualine/lualine.nvim`

Lualine provides a customizable status line for Neovim. It displays various information such as mode, filename, diagnostics, and more.

**Features:**
- Automatically set the lualine theme based on the current colorscheme
- Customizable sections and components

### LSP Configuration

**Plugin:** `neovim/nvim-lspconfig`

This plugin provides configuration for Language Server Protocol (LSP) support in Neovim. It includes various LSP servers and related tools.

**Dependencies:**
- `williamboman/mason.nvim`
- `williamboman/mason-lspconfig.nvim`
- `WhoIsSethDaniel/mason-tool-installer.nvim`
- `j-hui/fidget.nvim`
- `hrsh7th/cmp-nvim-lsp`

**LSP Servers:**
- ts_ls
- ruff
- pylsp
- html
- cssls
- tailwindcss
- dockerls
- sqlls
- terraformls
- jsonls
- yamlls
- lua_ls

### Indent-blankline

**Plugin:** `lukas-reineke/indent-blankline.nvim`

Indent-blankline adds indentation guides to Neovim, making it easier to see the structure of your code.

**Features:**
- Customizable indentation character
- Scope highlighting

### Comment.nvim

**Plugin:** `numToStr/Comment.nvim`

Comment.nvim provides easy commenting functionality for Neovim. It allows you to quickly comment and uncomment lines or visual regions.

**Key Mappings:**
- `<C-_>`: Toggle comment for the current line or visual selection
- `<C-c>`: Toggle comment for the current line or visual selection
- `<C-/>`: Toggle comment for the current line or visual selection

### Alpha-nvim

**Plugin:** `goolord/alpha-nvim`

Alpha-nvim provides a customizable start screen for Neovim. It displays a welcome message and shortcuts to frequently used commands.

**Dependencies:**
- `nvim-tree/nvim-web-devicons`

**Configuration:**
- Custom header with ASCII art

## Keybindings

Below is a list of keybindings used in this configuration:

### File Navigation
- `\`: Reveal the current file in the Neo-tree
- `\`: Close the Neo-tree window
- `<leader>e`: Toggle NvimTree
- `<leader>er`: Refresh NvimTree

### Window Management
- `ss`: Split window horizontally
- `sv`: Split window vertically
- `<C-h>`: Move focus to the left window
- `<C-l>`: Move focus to the right window
- `<C-j>`: Move focus to the lower window
- `<C-k>`: Move focus to the upper window

### Buffer Management
- `<Tab>`: Switch to the next buffer
- `<S-Tab>`: Switch to the previous buffer
- `<leader>x`: Close buffer
- `<leader>b`: New buffer
- `<leader>bd`: Buffer delete
- `<leader>ba`: Buffer delete all
- `<leader>bo`: Buffer delete other
- `<leader>bz`: Toggle Zen Mode

### Search Operations
- `<leader>sh`: Search help
- `<leader>sk`: Search keymaps
- `<leader>sf`: Search files
- `<leader>ss`: Search select Telescope
- `<leader>sw`: Search current word
- `<leader>sg`: Search by grep
- `<leader>sd`: Search diagnostics
- `<leader>sr`: Search resume
- `<leader>s.`: Search recent files
- `<leader><leader>`: Find existing buffers

### Git Operations
- `<leader>gc`: Search git commits
- `<leader>gs`: Search git status

### LSP Features
- `<leader>fd`: Open floating diagnostic message
- `<leader>D`: Type definition
- `<leader>ds`: Document symbols
- `<leader>ws`: Workspace symbols
- `<leader>rn`: Rename
- `<leader>ca`: Code action
- `<leader>th`: Toggle inlay hints

### Editing
- `<C-a>`: Select all
- `<A-j>`: Move selected text down
- `<A-k>`: Move selected text up
- `<leader>f`: Format buffer
- `<Esc>`: Clear highlights on search

### Terminal
- `<Esc><Esc>`: Exit terminal mode

### Notifications
- `<leader>fn`: Search notification history with Telescope
- `<leader>nc`: Clear/dismiss all notifications
- `<leader>nh`: Show notification history

### Misc
- `<leader>s"`: Search registers
- `<leader>sn`: Search Neovim files
- `<leader>bg`: Toggle background transparency
- `<leader>q`: Open diagnostic quickfix list

## Installation

### Install Neovim

Kickstart.nvim targets *only* the latest ['stable'](https://github.com/neovim/neovim/releases/tag/stable) and latest ['nightly'](https://github.com/neovim/neovim/releases/tag/nightly) of Neovim. If you are experiencing issues, please make sure you have the latest versions.

### Install External Dependencies

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Language Setup:
  - If you want to write Typescript, you need `npm`
  - If you want to write Golang, you will need `go`
  - etc.

### Install Kickstart

> **NOTE**
> [Backup](#FAQ) your previous configuration (if any exists)

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%localappdata%\nvim\` |
| Windows (powershell)| `$env:LOCALAPPDATA\nvim\` |

#### Recommended Step

[Fork](https://docs.github.com/en/get-started/quickstart/fork-a-repo) this repo so that you have your own copy that you can modify, then install by cloning the fork to your machine using one of the commands below, depending on your OS.

> **NOTE**
> Your fork's url will be something like this:
> `https://github.com/<your_github_username>/kickstart.nvim.git`

You likely want to remove `lazy-lock.json` from your fork's `.gitignore` file too - it's ignored in the kickstart repo to make maintenance easier, but it's [recommended to track it in version control](https://lazy.folke.io/usage/lockfile).

#### Clone kickstart.nvim

> **NOTE**
> If following the recommended step above (i.e., forking the repo), replace `nvim-lua` with `<your_github_username>` in the commands below

<details><summary> Linux and Mac </summary>

```sh
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

</details>

<details><summary> Windows </summary>

If you're using `cmd.exe`:

```
git clone https://github.com/nvim-lua/kickstart.nvim.git "%localappdata%\nvim"
```

If you're using `powershell.exe`:

```
git clone https://github.com/nvim-lua/kickstart.nvim.git "${env:LOCALAPPDATA}\nvim"
```

</details>

### Post Installation

Start Neovim

```sh
nvim
```

That's it! Lazy will install all the plugins you have. Use `:Lazy` to view current plugin status. Hit `q` to close the window.

Read through the `init.lua` file in your configuration folder for more information about extending and exploring Neovim. That also includes examples of adding popularly requested plugins.

### Getting Started

[The Only Video You Need to Get Started with Neovim](https://youtu.be/m8C0Cq9Uv9o)

### FAQ

* What should I do if I already have a pre-existing neovim configuration?
  * You should back it up and then delete all associated files.
  * This includes your existing init.lua and the neovim files in `~/.local` which can be deleted with `rm -rf ~/.local/share/nvim/`
* Can I keep my existing configuration in parallel to kickstart?
  * Yes! You can use [NVIM_APPNAME](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME)`=nvim-NAME` to maintain multiple configurations. For example, you can install the kickstart configuration in `~/.config/nvim-kickstart` and create an alias:
    ```
    alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
    ```
    When you run Neovim using `nvim-kickstart` alias it will use the alternative config directory and the matching local directory `~/.local/share/nvim-kickstart`. You can apply this approach to any Neovim distribution that you would like to try out.
* What if I want to "uninstall" this configuration:
  * See [lazy.nvim uninstall](https://lazy.folke.io/usage#-uninstalling) information
* Why is the kickstart `init.lua` a single file? Wouldn't it make sense to split it into multiple files?
  * The main purpose of kickstart is to serve as a teaching tool and a reference configuration that someone can easily use to `git clone` as a basis for their own. As you progress in learning Neovim and Lua, you might consider splitting `init.lua` into smaller parts. A fork of kickstart that does this while maintaining the same functionality is available here:
    * [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim)
  * Discussions on this topic can be found here:
    * [Restructure the configuration](https://github.com/nvim-lua/kickstart.nvim/issues/218)
    * [Reorganize init.lua into a multi-file setup](https://github.com/nvim-lua/kickstart.nvim/pull/473)

### Install Recipes

Below you can find OS specific install instructions for Neovim and dependencies.

After installing all the dependencies continue with the [Install Kickstart](#Install-Kickstart) step.

#### Windows Installation

<details><summary>Windows with Microsoft C++ Build Tools and CMake</summary>
Installation may require installing build tools and updating the run command for `telescope-fzf-native`

See `telescope-fzf-native` documentation for [more details](https://github.com/nvim-telescope/telescope-fzf-native.nvim#installation)

This requires:

- Install CMake and the Microsoft C++ Build Tools on Windows

```lua
{'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
```
</details>
<details><summary>Windows with gcc/make using chocolatey</summary>
Alternatively, one can install gcc and make which don't require changing the config, the easiest way is to use choco:

1. install [chocolatey](https://chocolatey.org/install) either follow the instructions on the page or use winget, run in cmd as **admin**:
```
winget install --accept-source-agreements chocolatey.chocolatey
```

2. install all requirements using choco, exit previous cmd and open a new one so that choco path is set, and run in cmd as **admin**:
```
choco install -y neovim git ripgrep wget fd unzip gzip mingw make
```
</details>
<details><summary>WSL (Windows Subsystem for Linux)</summary>

```
wsl --install
wsl
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>

#### Linux Install
<details><summary>Ubuntu Install Steps</summary>

```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>
<details><summary>Debian Install Steps</summary>

```
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip curl

# Now we install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim-linux64
sudo mkdir -p /opt/nvim-linux64
sudo chmod a+rX /opt/nvim-linux64
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# make it available in /usr/local/bin, distro installs to /usr/bin
sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/
```
</details>
<details><summary>Fedora Install Steps</summary>

```
sudo dnf install -y gcc make git ripgrep fd-find unzip neovim
```
</details>

<details><summary>Arch Install Steps</summary>

```
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
```
</details>

