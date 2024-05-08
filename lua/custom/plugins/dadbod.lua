-- TODO
-- maybe reove UI and just use  DB - get the connection on startup working with env vars and learn connection flow

-- define connections strings somewhere
-- fix mongo autocomplete within buffer
-- see if bottom buffer can be new buffer instead, or split right/left
-- master tool

return {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
        { "tpope/vim-dadbod", lazy = false },
        {
            "kristijanhusak/vim-dadbod-completion",
            ft = { "mongodb" },
            -- ft = { "mongodb", "sql", "mysql", "plsql" },
            lazy = false
        },
    },
    cmd = {
        "DBUI",
        "DBUIToggle",
        "DBUIAddConnection",
        "DBUIFindBuffer",
    },
    init = function()
        vim.g.db_ui_use_nerd_fonts = 1
        vim.g.db_ui_show_help = 1
        vim.g.db_ui_auto_execute_table_helpers = 1
        vim.g.db_ui_winwidth = 60
        vim.g.db_ui_default_query = "db.{table}.find({})"
        vim.g.db_ui_save_location = "~/work/db_ui_queries"
    end,
}
