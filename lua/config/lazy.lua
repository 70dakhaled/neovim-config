-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end

-- rtp = runtime path 
vim.opt.rtp:prepend(lazypath)	-- this puts lazy inside the runtime path


-- Setup lazy.nvim
require("lazy").setup({
	--			------Here Install Plugins----
	spec = {
		{import = "config.plugins"}, -- import plugins folder
	},
})

