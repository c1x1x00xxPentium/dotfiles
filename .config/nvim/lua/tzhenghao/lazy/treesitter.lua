return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter")
    treesitter.setup({})
    treesitter.install({
      "bash", "c", "cpp", "dockerfile", "json", "lua", "markdown",
      "markdown_inline", "python", "rust", "toml", "vim", "vimdoc", "yaml",
    })

    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("tzhenghao_treesitter", { clear = true }),
      callback = function(args)
        -- Keep normal syntax/indentation for buffers without an installed parser.
        if pcall(vim.treesitter.start, args.buf) then
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
