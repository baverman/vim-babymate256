#!/usr/bin/env python2
import sys
import os.path
from mako.template import Template

import tcolor

def hi(fg=None, bg=None, bold=None, italic=None, underline=None, reverse=None):
    parts = []
    if fg:
        parts.append(('guifg', '#' + fg))
        parts.append(('ctermfg', tcolor.find_nearest(fg)[1]))

    if bg:
        parts.append(('guibg', '#' + bg))
        parts.append(('ctermbg', tcolor.find_nearest(bg)[1]))

    attrs = []
    if bold:
        attrs.append('bold')

    if italic:
        attrs.append('italic')

    if underline:
        attrs.append('underline')

    if reverse:
        attrs.append('reverse')

    if not attrs:
        attrs.append('none')

    if attrs:
        cattrs = ','.join(attrs)
        parts.append(('gui', cattrs))
        parts.append(('cterm', cattrs))

    return ' '.join('{}={}'.format(*r) for r in parts)


if __name__ == '__main__':
    tpl = Template(filename=sys.argv[1])
    name = tpl.module.colors_name
    fname = os.path.join('colors', name + '.vim')
    with open(fname, 'w') as f:
        f.write(tpl.render(hi=hi))
