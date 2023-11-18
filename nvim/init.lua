-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 在新创建.c和.h文件时自动添加头文件以及#once
vim.api.nvim_exec([[
  augroup c_file_template
    autocmd!
    autocmd BufNewFile *.c :silent 0r ~/.config/nvim/templates/c.template
    autocmd BufNewFile *.h :silent 0r ~/.config/nvim/templates/h.template
  augroup END
]], false)
