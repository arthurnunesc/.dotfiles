function SetTheme()
  vim.cmd[[
    set termguicolors

    set background=light
    colorscheme quietlight

    set completeopt=menu,menuone,popup               "enable popup window
    set completepopup=highlight:InfoPopup,border:off "configure the highlight group
  ]]
end

SetTheme()
