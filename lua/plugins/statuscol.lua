-- Файл: lua/plugins/statuscol.lua
return {
  "luukvbaal/statuscol.nvim",
  event = "BufReadPre",
  dependencies = { "lewis6991/gitsigns.nvim" }, -- Для интеграции с git-знаками
  config = function()
    local builtin = require("statuscol.builtin")

    -- Регистрируем глобальные функции для обработки кликов
    _G.ScSa = builtin.sign_click -- Клики на знаках
    _G.ScFa = builtin.fold_click -- Клики на складках
    _G.ScLa = builtin.lnum_click -- Клики на номерах строк

    require("statuscol").setup({
      setopt = true, -- Автоматически настраивает опции
      separator = " ", -- Разделитель между сегментами
      foldfunc = "builtin", -- Используем встроенную логику складок

      -- Список сегментов (слева направо)
      segments = {
        -- 1. Знаки (диагностика, git, breakpoints)
        {
          sign = {
            namespace = { "diagnostic" }, -- Все группы знаков
            maxwidth = 1,
            colwidth = 2,
            -- auto = true, -- Автоматическое выравнивание
          },
          -- click = "v:lua.ScSa",
        },

        -- 2. Номера строк (с относительными номерами)
        {
          text = { builtin.lnumfunc },
          condition = { true },
          click = "v:lua.ScLa",
          hl = "LineNr", -- Подсветка как обычные номера строк
        },
        {
          sign = {
            namespace = { "gitsign*" },
            maxwidth = 1,
            colwidth = 1,
          },
        },

        {
          text = { " ║ " },
          condition = { true },
        },
      },

      -- Игнорировать для специальных буферов
      ft_ignore = {
        "help",
        "terminal",
        "NvimTree",
        "Trouble",
        "alpha",
        "lazy",
        "mason",
        "toggleterm",
        "dashboard",
      },
    })
  end,
}
