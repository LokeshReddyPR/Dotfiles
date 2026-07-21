return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  priority = 1000, -- load early, before/with the colorscheme
  opts = {
    -- Clear backgrounds for these extra groups too (floating windows,
    -- which-key, snacks, noice, etc.) so transparency looks consistent.
    extra_groups = {
      "NormalFloat",
      "FloatBorder",
      "WhichKeyFloat",
      "SnacksNormal",
      "SnacksBackdrop",
      "NoiceCmdlinePopup",
      "TelescopeNormal",
    },
  },
  keys = {
    -- Lives in the `<leader>u` (UI) group, next to `<leader>uC` (colorscheme).
    -- The `desc` makes it appear in which-key so it's easy to remember.
    { "<leader>uo", "<cmd>TransparentToggle<cr>", desc = "Toggle Transparency (opacity)" },
  },
}
