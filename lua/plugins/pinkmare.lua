return {
	"matsuuu/pinkmare",
	lazy = false,
	priority = 999,
	config = function()
		vim.cmd("let pinkmare_transparent_background = 1")
		vim.cmd("colorscheme pinkmare")
        -- Purple fg and NONE bg
        vim.cmd("let s:myGroup = \"Terminal\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"SignColumn\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"CursorLineNr\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"ModeMsg\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"String\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"Delimiter\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"Fg\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"NERDTreeDir\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"NERDTreeDirSlash\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"NERDTreeOpenable\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"NERDTreeFile\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"NERDTreeToggleOn\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"@punctuation.bracket\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"@punctuation.special\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"TSPunctBracket\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        -- Purple fg and bg0
        vim.cmd("let s:myGroup = \"NormalFloat\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=#202330' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=235' : s:myGroup.' ctermfg=White ctermbg=Black'")
        vim.cmd("let s:myGroup = \"ToolbarButton\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=#202330' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=235' : s:myGroup.' ctermfg=White ctermbg=Black'")
        vim.cmd("let s:myGroup = \"NormalFloat\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=#202330' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=235' : s:myGroup.' ctermfg=White ctermbg=Black'")
        vim.cmd("let s:myGroup = \"NormalFloat\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=#202330' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=235' : s:myGroup.' ctermfg=White ctermbg=Black'")
        -- Purple fg and bg2
        vim.cmd("let s:myGroup = \"NormalFloat\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=#242021' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=237' : s:myGroup.' ctermfg=White ctermbg=DarkGrey'")
        -- Purple fg and bg3
        vim.cmd("let s:myGroup = \"StatusLine\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=#242021' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=238' : s:myGroup.' ctermfg=White ctermbg=DarkGrey'")
        vim.cmd("let s:myGroup = \"StatusLineTerm\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=#242021' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=238' : s:myGroup.' ctermfg=White ctermbg=DarkGrey'")
        vim.cmd("let s:myGroup = \"deniteStatusLinePath\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=#242021' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=238' : s:myGroup.' ctermfg=White ctermbg=DarkGrey'")
        -- Purple fg and Black bg
        vim.cmd("let s:myGroup = \"NonText\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=Black' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=235' : s:myGroup.' ctermfg=White ctermbg=Black'")
        vim.cmd("let s:myGroup = \"MsgArea\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#e32020 guibg=Black' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=235' : s:myGroup.' ctermfg=White ctermbg=Black'")
        -- bg0 as fg and Purple as fg
        vim.cmd("let s:myGroup = \"WildMenu\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#202330 guibg=#e32020' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=235 ctermbg=223' : s:myGroup.' ctermfg=Black ctermbg=White'")
        -- none as fg and Purple as bg
        vim.cmd("let s:myGroup = \"CursonIM\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=NONE guibg=#e32020' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=NONE ctermbg=223' : s:myGroup.' ctermfg=NONE ctermbg=White'")
        -- Fix TS
        vim.cmd("let s:myGroup = \"Normal\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#ad55aa guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=56 ctermbg=NONE' : s:myGroup.' ctermfg=Purple ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"Directory\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#f2448b guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=52 ctermbg=NONE' : s:myGroup.' ctermfg=DarkRed ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"Constant\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#d9bcef guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=175 ctermbg=NONE' : s:myGroup.' ctermfg=Magenta ctermbg=NONE'")
        -- Color line numbers
        vim.cmd("let s:myGroup = \"LineNr\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#f2448b guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=204 ctermbg=NONE' : s:myGroup.' ctermfg=DarkRed ctermbg=NONE'")
	end,
}
