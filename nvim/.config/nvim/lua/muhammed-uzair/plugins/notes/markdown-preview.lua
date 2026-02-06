return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && npm install",  -- run npm install instead of calling the Vim function
    git = {
            ignore = {"app/yarn.lock"},
    }
}
