#!/bin/sh
<%!
    out = '~/bin/vial'
%>
VIAL=1 urxvtc -bg '#${theme_tpl.background}' -name vial -e vim-term-fix "$@"
