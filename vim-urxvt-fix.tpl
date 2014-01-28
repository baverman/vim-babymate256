#!/bin/sh
<%!
    out = '~/bin/vim-term-fix'
%>
printf '${hi.urxvt()}'
exec vim "$@"
