local lspconfig_status, lspconfig =  pcall(require, "lspconfig")
if not lspconfig then
    return
end

local mason_lspconfig_status, mason_lspconfig =  pcall(require, "mason-lspconfig")
if not mason_lspconfig then
    return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp =  pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
    return
end

local capabilities =  require("cmp_nvim_lsp").default_capabilities()

lspconfig["pyright"].setup({
	on_attach = on_attach,
	settings = {
		pyright = {autoImportCompletion = true,},
		python = {analysis = {	autoSearchPaths = true,
					diagnosticMode = 'openFilesOnly',
					useLibraryCodeForTypes = true,
					typeCheckingMode = 'off'}
				}
			}
		})

lspconfig["ansiblels"].setup({
    on_attach = on_attach,
    settings = {
        ansible = {
          ansible = {
            path = "ansible"
          },
          executionEnvironment = {
            enabled = false
          },
          python = {
            interpreterPath = "python"
          },
          validation = {
            enabled = true,
            lint = {
              enabled = true,
              path = "ansible-lint"
            }
          }
       }
    }
})




lspconfig["bashls"].setup({
    on_attach = on_attach,
    settings = {
        {
          bashIde = {
            globPattern = "*@(.sh|.inc|.bash|.command)"
          }
        }
    }
})



local null_ls_status, null_ls =  pcall(require, "null-ls")
if not null_ls_status then
    return
end

local formatting =  null_ls.builtins.formatting
local diagnostics =  null_ls.builtins.diagnostics


local ls = require('null-ls')
ls.setup({
  -- debug = true, -- Turn on debug for :NullLsLog
  diagnostics_format = "#{m} #{s}[#{c}]",
  sources = {
    formatting.prettier,
    formatting.stylua,
    formatting.black.with({
      extra_args = {"--line-length=120", "--skip-string-normalization"},
    }),
  }
})
