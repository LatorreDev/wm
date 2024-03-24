-- better up/down
vim.api.nvim_set_keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.api.nvim_set_keymap("n", "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.api.nvim_set_keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.api.nvim_set_keymap("n", "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, desc = "Go to left window" })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, desc = "Go to lower window" })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, desc = "Go to upper window" })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, desc = "Go to right window" })

-- Resize window using <ctrl> arrow keys
vim.api.nvim_set_keymap("n", "<C-Up>", "<cmd>resize +2<cr>", { noremap = true, desc = "Increase window height" })
vim.api.nvim_set_keymap("n", "<C-Down>", "<cmd>resize -2<cr>", { noremap = true, desc = "Decrease window height" })
vim.api.nvim_set_keymap("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { noremap = true, desc = "Decrease window width" })
vim.api.nvim_set_keymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { noremap = true, desc = "Increase window width" })

-- Move Lines
vim.api.nvim_set_keymap("n", "<A-j>", "<cmd>m .+1<cr>==", { noremap = true, desc = "Move down" })
vim.api.nvim_set_keymap("n", "<A-k>", "<cmd>m .-2<cr>==", { noremap = true, desc = "Move up" })
vim.api.nvim_set_keymap("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { noremap = true, desc = "Move down" })
vim.api.nvim_set_keymap("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { noremap = true, desc = "Move up" })
vim.api.nvim_set_keymap("v", "<A-j>", ":m '>+1<cr>gv=gv", { noremap = true, desc = "Move down" })
vim.api.nvim_set_keymap("v", "<A-k>", ":m '<-2<cr>gv=gv", { noremap = true, desc = "Move up" })

-- buffers
vim.api.nvim_set_keymap("n", "<S-h>", "<cmd>bprevious<cr>", { noremap = true, desc = "Prev buffer" })
vim.api.nvim_set_keymap("n", "<S-l>", "<cmd>bnext<cr>", { noremap = true, desc = "Next buffer" })
vim.api.nvim_set_keymap("n", "[b", "<cmd>bprevious<cr>", { noremap = true, desc = "Prev buffer" })
vim.api.nvim_set_keymap("n", "]b", "<cmd>bnext<cr>", { noremap = true, desc = "Next buffer" })
vim.api.nvim_set_keymap("n", "<leader>bb", "<cmd>e #<cr>", { noremap = true, desc = "Switch to Other Buffer" })
vim.api.nvim_set_keymap("n", "<leader>`", "<cmd>e #<cr>", { noremap = true, desc = "Switch to Other Buffer" })

-- Clear search with <esc>
vim.api.nvim_set_keymap("i", "<esc>", "<cmd>noh<cr><esc>", { noremap = true, desc = "Escape and clear hlsearch" })
vim.api.nvim_set_keymap("n", "<esc>", "<cmd>noh<cr>", { noremap = true, desc = "Clear hlsearch" })

-- Clear search, diff update and redraw
vim.api.nvim_set_keymap("n", "<leader>ur", "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>", { noremap = true, desc = "Redraw / clear hlsearch / diff update" })

-- Next and Prev search result
vim.api.nvim_set_keymap("n", "n", "'Nn'[v:searchforward].'zv'", { noremap = true, expr = true, desc = "Next search result" })
vim.api.nvim_set_keymap("x", "n", "'Nn'[v:searchforward]", { noremap = true, expr = true, desc = "Next search result" })
vim.api.nvim_set_keymap("o", "n", "'Nn'[v:searchforward]", { noremap = true, expr = true, desc = "Next search result" })
vim.api.nvim_set_keymap("n", "N", "'nN'[v:searchforward].'zv'", { noremap = true, expr = true, desc = "Prev search result" })
vim.api.nvim_set_keymap("x", "N", "'nN'[v:searchforward]", { noremap = true, expr = true, desc = "Prev search result" })
vim.api.nvim_set_keymap("o", "N", "'nN'[v:searchforward]", { noremap = true, expr = true, desc = "Prev search result" })

-- Add undo break-points
vim.api.nvim_set_keymap("i", ",", ",<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", ".", ".<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", ";", ";<c-g>u", { noremap = true })

-- save file
vim.api.nvim_set_keymap("i", "<C-s>", "<cmd>w<cr><esc>", { noremap = true, desc = "Save file" })
vim.api.nvim_set_keymap("x", "<C-s>", "<cmd>w<cr><esc>", { noremap = true, desc = "Save file" })
vim.api.nvim_set_keymap("n", "<C-s>", "<cmd>w<cr><esc>", { noremap = true, desc = "Save file" })
vim.api.nvim_set_keymap("s", "<C-s>", "<cmd>w<cr><esc>", { noremap = true, desc = "Save file" })

--keywordprg
vim.api.nvim_set_keymap("n", "<leader>K", "<cmd>norm! K<cr>", { noremap = true, desc = "Keywordprg" })

-- better indenting
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true })

-- lazy
vim.api.nvim_set_keymap("n", "<leader>l", "<cmd>Lazy<cr>", { noremap = true, desc = "Lazy" })

-- new file
vim.api.nvim_set_keymap("n", "<leader>fn", "<cmd>enew<cr>", { noremap = true, desc = "New File" })

vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>lopen<cr>", { noremap = true, desc = "Location List" })
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>copen<cr>", { noremap = true, desc = "Quickfix List" })

vim.api.nvim_set_keymap("n", "[q", "vim.cmd.cprev()", { noremap = true, desc = "Previous quickfix" })
vim.api.nvim_set_keymap("n", "]q", "vim.cmd.cnext()", { noremap = true, desc = "Next quickfix" })

-- diagnostic
vim.api.nvim_set_keymap("n", "<leader>cd", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, desc = "Line Diagnostics" })
vim.api.nvim_set_keymap("n", "]d", "<cmd>lua diagnostic_goto(true)<CR>", { noremap = true, desc = "Next Diagnostic" })
vim.api.nvim_set_keymap("n", "[d", "<cmd>lua diagnostic_goto(false)<CR>", { noremap = true, desc = "Prev Diagnostic" })
vim.api.nvim_set_keymap("n", "]e", "<cmd>lua diagnostic_goto(true, 'ERROR')<CR>", { noremap = true, desc = "Next Error" })
vim.api.nvim_set_keymap("n", "[e", "<cmd>lua diagnostic_goto(false, 'ERROR')<CR>", { noremap = true, desc = "Prev Error" })
vim.api.nvim_set_keymap("n", "]w", "<cmd>lua diagnostic_goto(true, 'WARN')<CR>", { noremap = true, desc = "Next Warning" })
vim.api.nvim_set_keymap("n", "[w", "<cmd>lua diagnostic_goto(false, 'WARN')<CR>", { noremap = true, desc = "Prev Warning" })

-- quit
vim.api.nvim_set_keymap("n", "<leader>qq", "<cmd>qa<cr>", { noremap = true, desc = "Quit all" })

-- highlights under cursor
vim.api.nvim_set_keymap("n", "<leader>ui", "vim.show_pos", { noremap = true, desc = "Inspect Pos" })

-- Terminal Mappings
vim.api.nvim_set_keymap("t", "<esc><esc>", "<C-\\><C-n>", { noremap = true, desc = "Enter Normal Mode" })
vim.api.nvim_set_keymap("t", "<C-h>", "<cmd>wincmd h<cr>", { noremap = true, desc = "Go to left window" })
vim.api.nvim_set_keymap("t", "<C-j>", "<cmd>wincmd j<cr>", { noremap = true, desc = "Go to lower window" })
vim.api.nvim_set_keymap("t", "<C-k>", "<cmd>wincmd k<cr>", { noremap = true, desc = "Go to upper window" })
vim.api.nvim_set_keymap("t", "<C-l>", "<cmd>wincmd l<cr>", { noremap = true, desc = "Go to right window" })
vim.api.nvim_set_keymap("t", "<C-/>", "<cmd>close<cr>", { noremap = true, desc = "Hide Terminal" })
vim.api.nvim_set_keymap("t", "<c-_>", "<cmd>close<cr>", { noremap = true, desc = "which_key_ignore" })

-- windows
vim.api.nvim_set_keymap("n", "<leader>ww", "<C-W>p", { noremap = true, desc = "Other window" })
vim.api.nvim_set_keymap("n", "<leader>wd", "<C-W>c", { noremap = true, desc = "Delete window" })
vim.api.nvim_set_keymap("n", "<leader>w-", "<C-W>s", { noremap = true, desc = "Split window below" })
vim.api.nvim_set_keymap("n", "<leader>w|", "<C-W>v", { noremap = true, desc = "Split window right" })
vim.api.nvim_set_keymap("n", "<leader>-", "<C-W>s", { noremap = true, desc = "Split window below" })
vim.api.nvim_set_keymap("n", "<leader>|", "<C-W>v", { noremap = true, desc = "Split window right" })

-- tabs
vim.api.nvim_set_keymap("n", "<leader><tab>l", "<cmd>tablast<cr>", { noremap = true, desc = "Last Tab" })
vim.api.nvim_set_keymap("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { noremap = true, desc = "First Tab" })
vim.api.nvim_set_keymap("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { noremap = true, desc = "New Tab" })
vim.api.nvim_set_keymap("n", "<leader><tab>]", "<cmd>tabnext<cr>", { noremap = true, desc = "Next Tab" })
vim.api.nvim_set_keymap("n", "<leader><tab>d", "<cmd>tabclose<cr>", { noremap = true, desc = "Close Tab" })
vim.api.nvim_set_keymap("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { noremap = true, desc = "Previous Tab" })

-- Telescope shortcuts
vim.api.nvim_set_keymap("n", "<leader>,", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", { noremap = true, desc = "Switch Buffer" })
vim.api.nvim_set_keymap("n", "<leader>/", "<cmd>Telescope live_grep<cr>", { noremap = true, desc = "Grep (root dir)" })
vim.api.nvim_set_keymap("n", "<leader>:", "<cmd>Telescope command_history<cr>", { noremap = true, desc = "Command History" })
vim.api.nvim_set_keymap("n", "<leader><space>", "<cmd>Telescope files<cr>", { noremap = true, desc = "Find Files (root dir)" })
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", { noremap = true, desc = "Buffers" })
vim.api.nvim_set_keymap("n", "<leader>fc", "<cmd>Telescope config_files<cr>", { noremap = true, desc = "Find Config File" })
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { noremap = true, desc = "Find Files (root dir)" })
vim.api.nvim_set_keymap("n", "<leader>fF", "<cmd>Telescope files cwd=~<cr>", { noremap = true, desc = "Find Files (cwd)" })
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope git_files<cr>", { noremap = true, desc = "Find Files (git-files)" })
vim.api.nvim_set_keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { noremap = true, desc = "Recent" })
vim.api.nvim_set_keymap("n", "<leader>fR", "<cmd>Telescope oldfiles cwd=" .. vim.fn.getcwd() .. "<cr>", { noremap = true, desc = "Recent (cwd)" })
vim.api.nvim_set_keymap("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { noremap = true, desc = "commits" })
vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { noremap = true, desc = "status" })
vim.api.nvim_set_keymap("n", "<leader>s\"", "<cmd>Telescope registers<cr>", { noremap = true, desc = "Registers" })
vim.api.nvim_set_keymap("n", "<leader>sa", "<cmd>Telescope autocommands<cr>", { noremap = true, desc = "Auto Commands" })
vim.api.nvim_set_keymap("n", "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { noremap = true, desc = "Buffer" })
vim.api.nvim_set_keymap("n", "<leader>sc", "<cmd>Telescope command_history<cr>", { noremap = true, desc = "Command History" })
vim.api.nvim_set_keymap("n", "<leader>sC", "<cmd>Telescope commands<cr>", { noremap = true, desc = "Commands" })
vim.api.nvim_set_keymap("n", "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", { noremap = true, desc = "Document diagnostics" })
vim.api.nvim_set_keymap("n", "<leader>sD", "<cmd>Telescope diagnostics<cr>", { noremap = true, desc = "Workspace diagnostics" })
vim.api.nvim_set_keymap("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { noremap = true, desc = "Grep (root dir)" })
vim.api.nvim_set_keymap("n", "<leader>sG", "<cmd>Telescope live_grep cwd=~<cr>", { noremap = true, desc = "Grep (cwd)" })
vim.api.nvim_set_keymap("n", "<leader>sh", "<cmd>Telescope help_tags<cr>", { noremap = true, desc = "Help Pages" })
vim.api.nvim_set_keymap("n", "<leader>sH", "<cmd>Telescope highlights<cr>", { noremap = true, desc = "Search Highlight Groups" })
vim.api.nvim_set_keymap("n", "<leader>sk", "<cmd>Telescope keymaps<cr>", { noremap = true, desc = "Key Maps" })
vim.api.nvim_set_keymap("n", "<leader>sM", "<cmd>Telescope man_pages<cr>", { noremap = true, desc = "Man Pages" })
vim.api.nvim_set_keymap("n", "<leader>sm", "<cmd>Telescope marks<cr>", { noremap = true, desc = "Jump to Mark" })
vim.api.nvim_set_keymap("n", "<leader>so", "<cmd>Telescope vim_options<cr>", { noremap = true, desc = "Options" })
vim.api.nvim_set_keymap("n", "<leader>sR", "<cmd>Telescope resume<cr>", { noremap = true, desc = "Resume" })
vim.api.nvim_set_keymap("n", "<leader>sw", "<cmd>Telescope grep_string<cr>", { noremap = true, desc = "Word (root dir)" })
vim.api.nvim_set_keymap("n", "<leader>sw", "<cmd>Telescope grep_string<cr>", { noremap = true, desc = "Selection (root dir)" })
vim.api.nvim_set_keymap("n", "<leader>sW", "<cmd>Telescope grep_string cwd=~<cr>", { noremap = true, desc = "Selection (cwd)" })
vim.api.nvim_set_keymap("n", "<leader>uC", "<cmd>Telescope colorscheme enable_preview=true<cr>", { noremap = true, desc = "Colorscheme with preview" })
vim.api.nvim_set_keymap("n", "<leader>ss", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>", { noremap = true, desc = "Goto Symbol" })
vim.api.nvim_set_keymap("n", "<leader>sS", "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>", { noremap = true, desc = "Goto Symbol (Workspace)" })

-- cmdline
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
