-- ~/.config/nvim/lua/presence-config.lua
print("Setting up Presence...")
require("presence"):setup({
    auto_update        = true,                -- Automatically update activity based on active buffer
    neovim_image_text  = "The One True Text Editor", -- Text displayed for the Neovim icon
    main_image         = "file",              -- Main image icon ("neovim" or "file")
    client_id          = "793271441293967371", -- Discord client ID
    log_level          = nil,                 -- Log messages at or above this level (nil by default)
    debounce_timeout   = 10,                  -- Number of seconds to debounce events
    enable_line_number = false,               -- Show line number in Discord status (disable for privacy)
    buttons            = true,                -- Use buttons for workspace and repository
    file_assets        = {},                   -- Custom file icons
    show_time          = true,                 -- Display current session duration
    editing_text       = "Editing %s",        -- Status text for editing files
    file_explorer_text = "Browsing %s",       -- Status text for browsing files
    git_commit_text    = "Committing changes", -- Status text for Git commits
    plugin_manager_text= "Managing plugins",   -- Status text for plugin manager
    reading_text       = "Reading %s",        -- Status text for reading files
    workspace_text     = "Working on %s",     -- Status text for projects
    line_number_text   = "Line %s out of %s", -- Custom text for line number
})
print("Presence setup complete.")
