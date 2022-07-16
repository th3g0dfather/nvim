local telescope = require('telescope')

telescope.load_extension('media_files')

telescope.setup {
    defaults = {
        file_ignore_patterns = { "target" }
    },
    extensions = {
        media_files = {
            -- filetypes whitelist
            -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
            -- filetypes = { "png", "webp", "jpg", "jpeg" },
            find_cmd = "rg" -- find command (defaults to `fd`)
        }
    },
}
