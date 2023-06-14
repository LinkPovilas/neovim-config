---@type MappingsTable
local M = {}

M.general = {
  i = {
    -- Move current line / block with option-j/k
    ["<A-j>"] = { "Esc>:m .+1<CR>==gi" },
    ["<A-k>"] = { "<Esc>:m .-2<CR>==gi" },
  },

  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- Move current line / block with option-j/k
    ["<A-j>"] = { ":m .+1<CR>==" },
    ["<A-k>"] = { ":m .-2<CR>==" },
  },

  v = {
    -- Move current line / block with option-j/k
    ["<A-j>"] = { ":m '>+1<CR>gv-gv" },
    ["<A-k>"] = { ":m '<-2<CR>gv-gv" },
  },
}

M.neotest = {
  n = {
    ["<leader>tt"] = {
      function()
        require("neotest").run.run(vim.fn.expand "%")
      end,
      "Run File",
    },
    ["<leader>tT"] = {
      function()
        require("neotest").run.run(vim.loop.cwd())
      end,
      "Run All Test Files",
    },
    ["<leader>tr"] = {
      function()
        require("neotest").run.run()
      end,
      "Run Nearest",
    },
    ["<leader>ta"] = {
      function()
        require("neotest").playwright.attachment()
      end,
      "Launch test attachment",
    },
    ["<leader>ts"] = {
      function()
        require("neotest").summary.toggle()
      end,
      "Toggle Summary",
    },
    ["<leader>tS"] = {
      function()
        require("neotest").run.stop()
      end,
      "Stop",
    },
    ["<leader>to"] = {
      function()
        require("neotest").output.open { enter = true, auto_close = true }
      end,
      "Show Output",
    },
    ["<leader>tO"] = {
      function()
        require("neotest").output_panel.toggle()
      end,
      "Toggle Output Panel",
    },
    ["<leader>tn"] = {
      function()
        require("neotest").jump.next { status = "failed" }
      end,
      "Jump to next failed",
    },
    ["<leader>tp"] = {
      function()
        require("neotest").jump.next { status = "failed" }
      end,
      "Jump to previous failed",
    },
  },
}

M.undotree = {
  n = {
    ["<leader>u"] = { "<cmd> UndotreeToggle <CR>", "Toggle undo-tree panel" },
  },
}

M.dap = {
  n = {
    ["<F5>"] = {
      function()
        require("dap").continue()
      end,
      "Start or continue debugging session",
    },
    ["<F10>"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
    },
    ["<F11>"] = {
      function()
        require("dap").step_into()
      end,
      "Step into",
    },
    ["<F12>"] = {
      function()
        require("dap").step_out()
      end,
      "Step out",
    },
    ["<leader>b"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle breakpoint",
    },
    ["<leader>B"] = {
      function()
        require("dap").set_breakpoint(vim.fn.input "Breakpoint condition: ")
      end,
      "Set breakpoint condition",
    },
  },
}

M.lazygit = {
  n = {
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "Toggle lazygit panel" },
  },
}
-- more keybinds!

return M
