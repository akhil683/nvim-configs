return {
  "craftzdog/solarized-osaka.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
        blur = 1,
      },
    }
  end,
}
-- return {
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin",
--       transparent_background = true,
--     },
--   },
-- }
