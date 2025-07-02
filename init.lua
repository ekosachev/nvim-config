-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Подсветка для лучшей визуализации
vim.api.nvim_set_hl(0, "StatusColSeparator", { fg = "#5e81ac" }) -- Разделитель
vim.api.nvim_set_hl(0, "StatusColFold", { fg = "#88c0d0" }) -- Складки
vim.api.nvim_set_hl(0, "LineNumber", { fg = "#c099ff" })
