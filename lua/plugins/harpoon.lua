return {
  "ThePrimeagen/harpoon",
  config = function()
    local function bind(op, outer_opts)
      outer_opts = vim.tbl_extend("force", { noremap = true, silent = true }, outer_opts or {})

      return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force", outer_opts, opts or {})
        vim.keymap.set(op, lhs, rhs, opts)
      end
    end

    local nnoremap = bind("n")

    local harpoon_ui = require("harpoon.ui")
    local harpoon_mark = require("harpoon.mark")
    -- Harpoon keybinds --
    -- Open harpoon ui
    nnoremap("<leader>ho", function()
      harpoon_ui.toggle_quick_menu()
    end)

    -- Add current file to harpoon
    nnoremap("<leader>ha", function()
      harpoon_mark.add_file()
    end)

    -- Remove current file from harpoon
    nnoremap("<leader>hr", function()
      harpoon_mark.rm_file()
    end)

    -- Remove all files from harpoon
    nnoremap("<leader>hc", function()
      harpoon_mark.clear_all()
    end)

    -- Quickly jump to harpooned files
    nnoremap("<leader>1", function()
      harpoon_ui.nav_file(1)
    end)

    nnoremap("<leader>2", function()
      harpoon_ui.nav_file(2)
    end)

    nnoremap("<leader>3", function()
      harpoon_ui.nav_file(3)
    end)

    nnoremap("<leader>4", function()
      harpoon_ui.nav_file(4)
    end)

    nnoremap("<leader>5", function()
      harpoon_ui.nav_file(5)
    end)
  end,
}
