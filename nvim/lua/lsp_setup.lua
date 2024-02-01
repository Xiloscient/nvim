-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', 'ge', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', 'gE', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client,bufnr)

  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  --vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}


local util = require 'lspconfig.util'
local rust_cached_root_dir = nil

require('lspconfig')['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    cmd = { 'rustup', 'run', 'nightly', 'rust-analyzer' },

    filetypes = { 'rust' },

    -- Server-specific settings...
    root_dir = function (fname)
        if rust_cached_root_dir == nil then
            rust_cached_root_dir = util.root_pattern('Cargo.toml')(fname)
        end
        return rust_cached_root_dir
    end,
    settings = {
      ["rust-analyzer"] = {
            diagnostics = { disabled = { 'inactive-code' } }
      }
    }
}



require('lspconfig')['clangd'].setup {
    on_attach = on_attach,
    cmd = {
        "/opt/homebrew/opt/llvm/bin/clangd",
        "--background-index",
        "--pch-storage=memory",
        "--all-scopes-completion",
        "--pretty",
        "--header-insertion=never",
        "-j=4",
        "--inlay-hints",
        "--header-insertion-decorators",
        "--function-arg-placeholders",
        "--completion-style=detailed"
    },
    filetypes = {"c", "cpp", "objc", "objcpp"},
    root_dir = require('lspconfig').util.root_pattern("src"),
    init_option = { fallbackFlags = {  "-std=c++2a"  } },
    capabilities = capabilities
}

require('lspconfig')['lua_ls'].setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

require('lspconfig')['texlab'].setup {
  on_attach = on_attach,
  cmd = { "texlab" },
  filetypes =  { "tex", "plaintex", "bib" },
  flags = lsp_flags,
  settings = {
    ['texlab'] = {
      auxDirectory = ".",
      bibtexFormatter = "texlab",
      build = {
        args = { "-pdf", "-interaction=nonstopmode", "-synctex=1"},
        executable = "latexmk",
        forwardSearchAfter = true,
        onSave = true
      },
      chktex = {
        onEdit = false,
        onOpenAndSave = false
      },
      diagnosticsDelay = 300,
      formatterLineLength = 80,
      forwardSearch = {
        executable =  "sioyek",
        args = {
            "--reuse-window",
            "--execute-command",
            "toggle_synctex",
            "--inverse-search",
            "code -r -g \"%%1:%%2\"",
            "--forward-search-file",
            "%f",
            "--forward-search-line",
            "%l",
            "%p",
        },
      },
      latexFormatter = "latexindent",
      latexindent = {
        modifyLineBreaks = false
      }
    }
  }
}

capabilities.textDocument.completion.completionItem.snippetSupport = true
require('lspconfig')['html'].setup {
  capabilities = capabilities,
}

require('lspconfig')['typst_lsp'].setup{}
