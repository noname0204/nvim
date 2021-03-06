-- Check is installed
local install_path = DATA_PATH..'/site/pack/packer/start/nvim-treesitter'
if FN.empty(FN.glob(install_path)) > 0 then
  return
end

-- Config
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'bash',
    'lua',
    'python',
    'css',
    'scss',
    'javascript',
    'tsx',
    'typescript',
    'vue',
    'json',
    'jsonc',
    'c',
    'cpp',
    'c_sharp',
    'rust',
    'prisma',
    'html',
    -- 'pascal',
    'fish',
    'svelte',
    'jsdoc'
  },

  rainbow = {
    enable = true,
    disable = {'html'},
    colors = {
      '#ebe534',
      '#eb3db9',
      '#2ac4c9',
    },
  },

  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
  },

  highlight = {
    enable = true,               -- false will disable the whole extension
    additional_vim_regex_highlighting = true,
  },

  context_commentstring = {
    enable = true,
    config = {
      css = '// %s'
    }
  },

  indent = {enable = true},
  autotag = {enable = true},
}
