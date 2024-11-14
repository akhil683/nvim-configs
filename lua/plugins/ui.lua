return {
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
 █████╗ ██╗  ██╗██╗  ██╗██╗██╗         ██████╗ ███████╗ █████╗  ██████╗███████╗
██╔══██╗██║ ██╔╝██║  ██║██║██║         ██╔══██╗██╔════╝██╔══██╗██╔════╝██╔════╝
███████║█████╔╝ ███████║██║██║         ██████╔╝█████╗  ███████║██║     █████╗  
██╔══██║██╔═██╗ ██╔══██║██║██║         ██╔═══╝ ██╔══╝  ██╔══██║██║     ██╔══╝  
██║  ██║██║  ██╗██║  ██║██║███████╗    ██║     ███████╗██║  ██║╚██████╗███████╗
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚══════╝    ╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝╚══════╝
                                                                               
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
-- // https://github.com/akhil683
