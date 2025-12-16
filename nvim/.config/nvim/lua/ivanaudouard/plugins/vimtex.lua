return {
  'lervag/vimtex',
  lazy = false,
  init = function()
    vim.g.vimtex_compiler_enabled = 1
    vim.g.vimtex_compiler_method = 'latexmk'

    vim.g.vimtex_compiler_latexmk = {
      callback = 0, -- don't call :VimtexView automatically
    }

    vim.g.vimtex_view_method = 'skim'
    vim.g.vimtex_view_skim_sync = 1
    vim.g.vimtex_view_skim_activate = 0 -- do not bring Skim to front
  end,
}
