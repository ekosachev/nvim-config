-- return {
--   "gitsigns.nvim",
--   opts = function()
--     Snacks.toggle({
--       name = "Git Signs",
--       get = function()
--         return require("gitsigns.config").config.signcolumn
--       end,
--       set = function(state)
--         require("gitsigns").toggle_signs(state)
--       end,
--       signs = {
--         add = { text = "│" },
--         change = { text = "│" },
--         delete = { text = "└" },
--         topdelete = { text = "┌" },
--         changedelete = { text = "~" },
--         untracked = { text = "┆" },
--       },
--       signs_staged = {
--         add = { text = "┃" },
--         change = { text = "┃" },
--         delete = { text = "┗" },
--         topdelete = { text = "┏" },
--         changedelete = { text = "~" },
--         untracked = { text = "┇" },
--       },
--     }):map("<leader>uG")
--   end,
-- }
--
return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add = { text = "│" },
      change = { text = "│" },
      delete = { text = "└" },
      topdelete = { text = "┌" },
      changedelete = { text = "~" },
      untracked = { text = "┆" },
    },
    signs_staged = {
      add = { text = "┃" },
      change = { text = "┃" },
      delete = { text = "┗" },
      topdelete = { text = "┏" },
      changedelete = { text = "~" },
      untracked = { text = "┇" },
    },
  },
}
