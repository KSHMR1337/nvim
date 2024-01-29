return {
	"matsuuu/pinkmare",
	lazy = false,
	priority = 999,
	config = function()
		vim.cmd("let pinkmare_transparent_background = 1")
		vim.cmd("colorscheme pinkmare")
        -- vim.cmd("let target='NormalFloat' | if (has('termguicolors') && &termguicolors) || has('gui_running') | hi target guifg=#F2447A guibg=#202330 | elseif exists('*s:t_Co') && s:t_Co >= 256 | hi target ctermfg=223 ctermbg=235 | else | hi target ctermfg=White ctermbg=Black | endif")
        -- vim.cmd("let s:target=\"NormalFloat\" | if (has('termguicolors') && &termguicolors) || has('gui_running') | hi s:target guifg=#F2447A guibg=#202330 | elseif exists('*s:t_Co') && s:t_Co >= 256 | hi s:target ctermfg=223 ctermbg=235 | else | hi s:target ctermfg=White ctermbg=Black | endif")
        -- Purple fg and NONE bg
        vim.cmd("let s:myGroup = \"Normal\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"Terminal\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"SignColumn\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"CursorLineNr\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"ModeMsg\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"String\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"Delimiter\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"Fg\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"NERDTreeDir\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"NERDTreeDirSlash\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"NERDTreeOpenable\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"NERDTreeFile\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"NERDTreeToggleOn\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"@punctuation.bracket\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"@punctuation.special\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        vim.cmd("let s:myGroup = \"TSPunctBracket\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=NONE' : s:myGroup.' ctermfg=White ctermbg=NONE'")
        -- Purple fg and bg0
        vim.cmd("let s:myGroup = \"NormalFloat\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=#202330' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=235' : s:myGroup.' ctermfg=White ctermbg=Black'")
        vim.cmd("let s:myGroup = \"ToolbarButton\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=#202330' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=235' : s:myGroup.' ctermfg=White ctermbg=Black'")
        vim.cmd("let s:myGroup = \"NormalFloat\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=#202330' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=235' : s:myGroup.' ctermfg=White ctermbg=Black'")
        vim.cmd("let s:myGroup = \"NormalFloat\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=#202330' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=235' : s:myGroup.' ctermfg=White ctermbg=Black'")
        -- Purple fg and bg2
        vim.cmd("let s:myGroup = \"NormalFloat\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=#242021' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=237' : s:myGroup.' ctermfg=White ctermbg=DarkGrey'")
        -- Purple fg and bg3
        vim.cmd("let s:myGroup = \"StatusLine\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=#242021' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=238' : s:myGroup.' ctermfg=White ctermbg=DarkGrey'")
        vim.cmd("let s:myGroup = \"StatusLineTerm\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=#242021' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=238' : s:myGroup.' ctermfg=White ctermbg=DarkGrey'")
        vim.cmd("let s:myGroup = \"deniteStatusLinePath\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=#242021' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=238' : s:myGroup.' ctermfg=White ctermbg=DarkGrey'")
        -- Purple fg and Black bg
        vim.cmd("let s:myGroup = \"NonText\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=Black' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=235' : s:myGroup.' ctermfg=White ctermbg=Black'")
        vim.cmd("let s:myGroup = \"MsgArea\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#F2447A guibg=Black' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=223 ctermbg=235' : s:myGroup.' ctermfg=White ctermbg=Black'")
        -- bg0 as fg and Purple as fg
        vim.cmd("let s:myGroup = \"WildMenu\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#202330 guibg=#F2447A' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=235 ctermbg=223' : s:myGroup.' ctermfg=Black ctermbg=White'")
        -- none as fg and Purple as bg
        vim.cmd("let s:myGroup = \"CursonIM\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=NONE guibg=#F2447A' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=NONE ctermbg=223' : s:myGroup.' ctermfg=NONE ctermbg=White'")
        -- Remove green highlight from NerdTREE
        vim.cmd("let s:myGroup = \"Directory\" | execute 'hi' (has('termguicolors') && &termguicolors) || has('gui_running') ? s:myGroup.' guifg=#f2448b guibg=NONE' : exists('*s:t_Co') && s:t_Co >= 256 ? s:myGroup.' ctermfg=52 ctermbg=NONE' : s:myGroup.' ctermfg=DarkRed ctermbg=NONE'")
	end,
}
