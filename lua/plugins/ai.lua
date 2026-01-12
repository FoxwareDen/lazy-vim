return {
  {
    "Exafunction/windsurf.nvim",
    lazy = true, -- explicit
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    init = function()
      vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        once = true,
        callback = function()
          require("codeium").setup({
            virtual_text = {
              enabled = true,
              key_bindings = {
                accept = "<Tab>",
                accept_word = false,
                accept_line = false,
                clear = false,
                next = "<M-]>",
                prev = "<M-[>",
              },
            },
            enable_cmp_source = false,
          })
        end,
      })
    end,
  },
}
