require("core.keymaps")
require("core.plugins")
require("core.plugin_config")
vim.opt.number = true
vim.opt.relativenumber = false
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
