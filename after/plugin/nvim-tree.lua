vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
    view = {
        mappings = {
            list = {
                { key = "<leader>v", action = "vsplit"},
                { key = "<leader>x", action = "split"},
                { key = "<leader>t", action = "tabnew"},
                { key = "<leader>r", action = "full_rename"},
            }
        }
    }
})

local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

