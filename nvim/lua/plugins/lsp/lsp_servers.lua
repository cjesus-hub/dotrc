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


