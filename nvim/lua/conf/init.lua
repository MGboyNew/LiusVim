local plugs = {"colorizer","bufferline","catppuccin","cmp","gitsigns","indent_blankline","nvim-lastplace","lint"}

local function loadStatus()
    -- 循环所有的插件(插件名),如果require失败,就返回false
    for i = 1, #plugs, 1 do
        local status_ok,_ = pcall(require,plugs[i])
        if not status_ok then
            return false
        end
    end
    return true
end

local loadS = loadStatus()

if loadS then
    require("colorizer").setup()
    require('conf.nvim-bufferline-config')
    require("conf.nvim-catppuccin-config")
    require('conf.nvim-cmp-config')
    require('conf.nvim-gitsigns-config')
    -- require('conf.nvim-hlslens-config')
    -- require('conf.nvim-illuminate-config')
    require('conf.nvim-indent-blankline-config')
    require('conf.nvim-lastplace-config')
    require('conf.nvim-lint-config')
    require('conf.nvim-lsp-installer-config')
    require('conf.nvim-lsp_signature-config')
    require('conf.nvim-lspconfig-config')
    require('conf.nvim-lspsaga-config')
    require('conf.nvim-lualine-config')
    require('conf.nvim-neoformat-config')
    require('conf.nvim-snippets-config')
    require('conf.nvim-telescope-config')
    require('conf.nvim-tree-config')
    require('conf.nvim-treesitter-config')
end

