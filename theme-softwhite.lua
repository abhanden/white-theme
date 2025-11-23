-- ~/.config/nvim/lua/plugins/theme-softwhite.lua
return {
  "rebelot/kanagawa.nvim", -- Beispielhelles Theme
  lazy = false,
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      colors = {
        theme = {
          all = {
            bg = "#f3f3f3", -- sehr helles Grau
            fg = "#2b2b2e", -- dunkler Text
          },
        },
      },
      overrides = {
        Normal = { bg = "#f3f3f3", fg = "#2b2b2e" },
        NormalFloat = { bg = "#e8e8eb", fg = "#2b2b2e" },
        CursorLine = { bg = "#e0e0e3" },
        Visual = { bg = "#dcdce1" },
        StatusLine = { bg = "#e6e6ea", fg = "#2b2b2e" },
        TabLine = { bg = "#e6e6ea", fg = "#2b2b2e" },
        TabLineSel = { bg = "#dcdce1", fg = "#1e1e20" },
        Pmenu = { bg = "#e8e8eb" },
        PmenuSel = { bg = "#dcdce1" },
      },
    })
    vim.cmd("colorscheme kanagawa")
  end,
}
