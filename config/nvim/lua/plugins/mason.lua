return {
  {
    "williamboman/mason.nvim",
     opts = {
    ensure_installed = { "jdtls", "java-test", "java-debug-adapter" }
  }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = { "lua_ls", "clangd", "jdtls", "java_language_server", "bashls", "cssls", "html", "quick_lint_js" },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
  }
}
