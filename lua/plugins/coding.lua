return{
  {
    "jose-elias-alvarez/null-ls.nvim",
    -- event = "BufReadPre",
    dependencies = { "mason.nvim" },
    opts = function()
      local b = require("null-ls.builtins")
      return {
        debug = true,
        sources = {
          -- nls.builtins.formatting.prettierd,
      --    b.formatting.stylua,
          b.diagnostics.checkstyle.with({
          extra_args = { "-c", "/google_checks.xml" }, -- or "/sun_checks.xml" or path to self written rules
          b.formatting.clang_format,
          }),
        },
      }
    end,
  },
}
