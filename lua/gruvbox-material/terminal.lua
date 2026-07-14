local M = {}

function M.setup(c)
  vim.g.terminal_color_0  = c.term_black
  vim.g.terminal_color_1  = c.term_red
  vim.g.terminal_color_2  = c.term_green
  vim.g.terminal_color_3  = c.term_yellow
  vim.g.terminal_color_4  = c.term_blue
  vim.g.terminal_color_5  = c.term_magenta
  vim.g.terminal_color_6  = c.term_cyan
  vim.g.terminal_color_7  = c.term_white
  vim.g.terminal_color_8  = c.term_bright_black
  vim.g.terminal_color_9  = c.term_bright_red
  vim.g.terminal_color_10 = c.term_bright_green
  vim.g.terminal_color_11 = c.term_bright_yellow
  vim.g.terminal_color_12 = c.term_bright_blue
  vim.g.terminal_color_13 = c.term_bright_magenta
  vim.g.terminal_color_14 = c.term_bright_cyan
  vim.g.terminal_color_15 = c.term_bright_white
end

return M
