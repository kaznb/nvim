local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    [[kaznb is unavoidable]],
}

dashboard.section.header.opts.hl = "ErrorMsg"

dashboard.section.buttons.val = {
    dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
    dashboard.button("t", "  File tree", ":NvimTreeToggle<CR>"),
    dashboard.button("g", "  Neogit", ":Neogit<CR>"),
    dashboard.button("q", "  Quit", ":qa<CR>"),
}

dashboard.section.footer.val = ""

alpha.setup(dashboard.opts)
