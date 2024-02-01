return {

 {
    "williamboman/mason.nvim",
    config = function ()
      require("mason").setup()
    end
    

},
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- lsp list
        ensure_installed = { "pylsp", "fortls", "julials", "lua_ls"}
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      
      -- setup language servers
      lspconfig.pylsp.setup({})
      lspconfig.fortls.setup({})
      lspconfig.julials.setup({})
      lspconfig.lua_ls.setup({})


      --keymaps
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

    end
  }
}
