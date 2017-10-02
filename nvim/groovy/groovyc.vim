"============================================================================
"File:        groovyc.vim
"Description: Syntax checker for groovy programming Language
"             based on javac by Jochen Keil <jochen.keil at gmail dot com>
"             and Dmitry Geurkov <d.geurkov at gmail dot com>
"             and groovyc by am4dr <t.f.octo@gmail.com>
"Maintainer:  
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"============================================================================

if exists('g:loaded_syntastic_groovy_groovyc_checker')
    finish
endif
let g:loaded_syntastic_groovy_groovyc_checker = 1

let s:save_cpo = &cpo
set cpo&vim

if !exists('g:syntastic_groovy_groovyc_executable')
    let g:syntastic_groovy_groovyc_executable = 'groovyc'
endif

if !exists('g:syntastic_groovy_groovyc_options')
    let g:syntastic_groovy_groovyc_options = ''
endif

if !exists('g:syntastic_groovy_groovyc_config_file')
    let g:syntastic_groovy_groovyc_config_file= '.syntastic_groovyc_config'
endif

if !exists('g:syntastic_groovy_groovyc_classpath')
    let g:syntastic_groovy_groovyc_classpath = ''
endif

function! SyntaxCheckers_groovy_groovyc_IsAvailable() dict
    return executable(self.getExec())
endfunction

function! SyntaxCheckers_groovy_groovyc_GetLocList() dict
    let groovyc_opts = g:syntastic_groovy_groovyc_options
    let output_dir = syntastic#util#tmpdir()
    let groovyc_opts .= ' -d ' . syntastic#util#shescape(output_dir)
    
    " load classpath from config file
    if g:syntastic_groovy_groovyc_config_file_enabled
        call s:LoadConfigFile()
    endif
    
    let groovyc_classpath = g:syntastic_groovy_groovyc_classpath
    
    if groovyc_classpath !=# ''
        let groovyc_opts .= ' --classpath ' . syntastic#util#shexpand(groovyc_classpath)
    endif
    
    let makeprg = self.makeprgBuild({
    \   'args' : groovyc_opts,
    \   'fname': syntastic#util#shescape(expand('%:p', 1)),
    \ })
    let errorformat =
    \   '%f: %l: %\%%([Static type checking] - %\)%\=%m @%.%#column %c.,' .
    \   '%E%f: %l: %\%%([Static type checking] - %\)%\=%m,' .
    \   '%-Z @ line %l%\, column %c.,' .
    \   '%-G%.%#,'
    
    if output_dir !=# ''
        silent! call mkdir(output_dir, 'p')
    endif
   
    let errors = SyntasticMake({
    \   'makeprg' : makeprg,
    \   'errorformat' : errorformat,
    \ })
    
    if output_dir !=# ''
        call syntastic#util#rmrf(output_dir)
    endif
    return errors
endfunction

function! s:LoadConfigFile()
    if filereadable(expand(g:syntastic_groovy_groovyc_config_file, 1))
        execute 'source ' . fnameescape(expand(g:syntastic_groovy_groovyc_config_file, 1))
    endif
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
\   'filetype': 'groovy',
\   'name': 'groovyc',
\ })

let &cpo = s:save_cpo
unlet s:save_cpo
