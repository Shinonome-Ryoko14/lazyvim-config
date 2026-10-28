-- C / C++ 现代化开发配置
-- 依赖系统已安装: g++-14, clang-20, clangd-20, clang-format-20, clang-tidy-20
return {
  -- ---------------------------------------------------------------
  -- clangd：使用 clangd-20，并授权其调用 g++-14 探测系统头文件
  --         （这样 bits/stdc++.h / libstdc++ 都能被正确解析）
  -- ---------------------------------------------------------------
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.clangd = opts.servers.clangd or {}
      opts.servers.clangd.cmd = {
        "clangd-20",
        "--background-index",
        "--clang-tidy",
        "--header-insertion=iwyu",
        "--completion-style=detailed",
        "--function-arg-placeholders",
        "--fallback-style=llvm",
        "--query-driver=/usr/bin/g++-*,/usr/bin/gcc-*,/usr/bin/clang++-*,/usr/bin/clang-*",
      }
    end,
  },

  -- ---------------------------------------------------------------
  -- clang-format：作为 C / C++ 的默认格式化器（保存时自动格式化）
  -- 风格由 ~/.clang-format 控制
  -- ---------------------------------------------------------------
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        c = { "clang-format" },
        cpp = { "clang-format" },
      },
    },
  },
}
