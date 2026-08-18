local autokai_root = "/Users/mrgafs/Documents/Developer/Work/DriveNova/autokai"
local autokai_backend = autokai_root .. "/autokai-backend"
local autokai_python = "/Users/mrgafs/.venvs/autokai-backend/bin/python"

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              pythonPath = autokai_python,
              analysis = {
                extraPaths = {
                  autokai_backend,
                },
              },
            },
          },
        },
        ruff = {
          init_options = {
            settings = {
              lint = {
                ignore = { "E402", "I001" },
              },
            },
          },
        },
      },
      setup = {
        pyright = function(_, opts)
          local lspconfig = require("lspconfig")
          local util = require("lspconfig.util")

          opts.root_dir = function(fname)
            if fname:find(autokai_backend, 1, true) then
              return autokai_backend
            end
            return util.root_pattern("pyrightconfig.json", "pyproject.toml", "setup.py", "setup.cfg", ".git")(fname)
          end

          lspconfig.pyright.setup(opts)
          return true
        end,
        ruff = function(_, opts)
          local lspconfig = require("lspconfig")
          local util = require("lspconfig.util")

          opts.root_dir = function(fname)
            if fname:find(autokai_backend, 1, true) then
              return autokai_backend
            end
            return util.root_pattern("pyproject.toml", "ruff.toml", ".ruff.toml", ".git")(fname)
          end

          lspconfig.ruff.setup(opts)
          return true
        end,
      },
    },
  },
}
