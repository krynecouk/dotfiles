vim.lsp.start({
  name = 'pyright',
  cmd = {'pyright-langserver', '--stdio'},
  root_dir = vim.fs.dirname(vim.fs.find({'pyproject.toml', 'setup.py', 'setup.cfg', '.git'}, { upward = true })[1]),
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",  -- Adjust to "off", "basic", or "strict" as needed
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
      },
    },
  },
})
