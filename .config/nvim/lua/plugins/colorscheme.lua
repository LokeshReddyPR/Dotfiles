return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      --local transparent = true -- set to true if you would like to enable transparency

      local coolgruv = {
        contrast = "hard", -- options: "hard" (darkest canvas), "medium" (default), or "soft"
        palette_overrides = {},
      }

      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        contrast = coolgruv.contrast,
        palette_overrides = coolgruv.palette_overrides,
        overrides = {},
        dim_inactive = false,
        transparent_mode = transparent,
      })

      -- Enforce Neovim to render the UI using dark palette rules
      vim.o.background = "dark"
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
