local mason_status, mason =  pcall(require, "mason")
if not mason_status then
    return
end

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

local mason_tool_installer_status, mason_tool_installer =  pcall(require, "mason-tool-installer")
if not cmp_nvim_lsp_status then
    return
end

-- Change the Diagnostic symbols in the sign column (gutter)
-- (not in youtube nvim video)
local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

mason.setup(
{
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

mason_lspconfig.setup({
    ensure_installed = {
        "ansiblels",
        "autotools_ls",
--        "bashls",
        "clangd",
        "cmake",
        "dockerls",
        "docker_compose_language_service",
        "elmls",
--        "helm_ls",
        "jsonls",
        "jdtls",
--        "java_language_server",
--        "jinja_lsp",
        "jqls",
        "lua_ls",
        "markdown_oxide",
        "pyright",
        "sqls",
        "terraformls",
        "yamlls",
    }
})

mason_tool_installer.setup({
  ensure_installed = {
    "prettier", -- prettier formatter
    "stylua", -- lua formatter
    "isort", -- python formatter
    "black", -- python formatter
    --"pylint",
    "pyright",
    "eslint_d",
  },
})

--lspconfig["pylint"]
