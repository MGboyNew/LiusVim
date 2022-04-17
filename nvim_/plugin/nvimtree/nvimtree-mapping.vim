nnoremap <C-b> :NvimTreeToggle<CR>

" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
" More available functions:
" NvimTreeOpen
" NvimTreeClose
" NvimTreeFocus
" NvimTreeFindFileToggle
" NvimTreeResize
" NvimTreeCollapse
" NvimTreeCollapseKeepBuffers

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
"highlight NvimTreeFolderIcon guibg=blue



""-- default mappings
""local list = {
""  { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
""  { key = "<C-e>",                        action = "edit_in_place" },
""  { key = {"O"},                          action = "edit_no_picker" },
""  { key = {"<2-RightMouse>", "<C-]>"},    action = "cd" },
""  { key = "<C-v>",                        action = "vsplit" },
""  { key = "<C-x>",                        action = "split" },
""  { key = "<C-t>",                        action = "tabnew" },
""  { key = "<",                            action = "prev_sibling" },
""  { key = ">",                            action = "next_sibling" },
""  { key = "P",                            action = "parent_node" },
""  { key = "<BS>",                         action = "close_node" },
""  { key = "<Tab>",                        action = "preview" },
""  { key = "K",                            action = "first_sibling" },
""  { key = "J",                            action = "last_sibling" },
""  { key = "I",                            action = "toggle_git_ignored" },
""  { key = "H",                            action = "toggle_dotfiles" },
""  { key = "R",                            action = "refresh" },
""  { key = "a",                            action = "create" },
""  { key = "d",                            action = "remove" },
""  { key = "D",                            action = "trash" },
""  { key = "r",                            action = "rename" },
""  { key = "<C-r>",                        action = "full_rename" },
""  { key = "x",                            action = "cut" },
""  { key = "c",                            action = "copy" },
""  { key = "p",                            action = "paste" },
""  { key = "y",                            action = "copy_name" },
""  { key = "Y",                            action = "copy_path" },
""  { key = "gy",                           action = "copy_absolute_path" },
""  { key = "[c",                           action = "prev_git_item" },
""  { key = "]c",                           action = "next_git_item" },
""  { key = "-",                            action = "dir_up" },
""  { key = "s",                            action = "system_open" },
""  { key = "q",                            action = "close" },
""  { key = "g?",                           action = "toggle_help" },
""  { key = "W",                            action = "collapse_all" },
""  { key = "S",                            action = "search_node" },
""  { key = "<C-k>",                        action = "toggle_file_info" },
""  { key = ".",                            action = "run_file_command" }
""}

lua << EOF


-- vim.api.nvim_set_keymap('n', '<C-B>', ":lua require'tree.lua'.open()<CR>", {noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-N>', ":lua require'tree.lua'.close()<CR>", {noremap = true, silent = true })
-- require '/nvimtree-mapping'

EOF
