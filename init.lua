if vim.loader then
    vim.loader.enable()
end

_G.dd = function(...)
    require("util.debug").dump(...)
end

vim.print = _G.dd

require("config.lazy") -- Load your lazy loading configuration

-- Plugin configuration for presence.nvim
require('presence-config') -- Ensure this is set up properly to configure presence.nvim

