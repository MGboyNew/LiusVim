

local view = require'nvim-tree.view'

local tree ={}
tree.open = function ()
   require'bufferline.state'.set_offset(31, '')
   require'nvim-tree'.find_file(true)
end

tree.close = function ()
      require'nvim-tree.view'.close()
      require'bufferline.state'.set_offset(0)
end

return tree

-- view.is_visible() 

-- local _M = {}
-- _M.toggle_tree = function()
--   if view.is_visible() then
--     require'nvim-tree'.close()
--     require'bufferline.state'.set_offset(0)
--   else
--     require'bufferline.state'.set_offset(31, 'File Explorer')
--     require'nvim-tree'.find_file(true)
--   end
-- 
-- end
-- 
-- return _M
