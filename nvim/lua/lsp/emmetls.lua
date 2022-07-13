return {
    filetypes = {"html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less"},
    root_dir = function()
        return vim.fn.getcwd()
    end
}
