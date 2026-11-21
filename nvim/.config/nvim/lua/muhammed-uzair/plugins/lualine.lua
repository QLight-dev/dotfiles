
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local function clock()
            return os.date("%H:%M:%S")  
        end

        -- Setup lualine with the clock
        require('lualine').setup({
            options = {
                theme = 'auto',
                section_separators = '',
                component_separators = '',
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch'},
                lualine_c = {'filename'},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_y = {clock}, 
                lualine_z = {'location'}
            },
        })
    end
}

