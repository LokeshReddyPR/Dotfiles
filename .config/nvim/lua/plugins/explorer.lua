return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true, -- show dotfiles (.config, .zshrc, ...) by default
          ignored = true, -- also show git-ignored files
        },
      },
    },
  },
}
