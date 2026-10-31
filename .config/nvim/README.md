# Neovim

Requires Neovim 0.12+, Git, ripgrep, a C compiler, and tree-sitter CLI 0.26.1+
(installed through a package manager, not npm). For macOS:

```sh
brew install neovim ripgrep fd tree-sitter-cli
```

After placing this directory at `~/.config/nvim`, start Neovim and let lazy.nvim
install plugins and Treesitter install parsers. Reopen files after the first
parser installation. Use `:TSUpdate` after updating Treesitter, and `:checkhealth`
to diagnose missing tools. Commit `lazy-lock.json` after intentional plugin updates;
use `:Lazy restore` to restore its versions.

Mason installs Bash, C/C++, Lua, Python, and Rust language servers. LSP settings
use Neovim's `vim.lsp.config` API before Mason enables the servers.

## Keys

- Space is the leader key.
- `<leader>ff`: find files; `<leader>fg`: find Git files.
- `<leader>fl`: search file contents; `<leader>fb`: find buffers.
- `<leader>fh`: search help; `;` retains Vim's repeat-character-search motion.
- `<leader>e`: toggle Neo-tree; `<leader>o`: focus it.
- `<leader>f`: format the buffer or visual selection (manual only).
- Completion: Tab/Shift-Tab select suggestions or move through snippet fields;
  Enter confirms an explicitly selected suggestion; Ctrl-Space opens completion.

## Formatting

Conform uses StyLua for Lua, Ruff for Python, clang-format for C/C++, rustfmt for
Rust, shfmt for shell, and Prettier for JSON, YAML, and Markdown. Install the
formatters you use through `:Mason` or your project/package manager; formatter
installation is separate from language-server installation. Project-local
configuration files control formatting. Available LSP formatting is the fallback
when no configured formatter is available. Use `:ConformInfo` to check availability.

If parser compilation reports `tapi error` or `unknown architecture`, check that
your selected compiler and macOS SDK come from compatible Xcode/Command Line
Tools versions. To use the SDK bundled with the selected Xcode installation:

```sh
SDKROOT="$(xcrun --sdk macosx --show-sdk-path)" nvim
```
