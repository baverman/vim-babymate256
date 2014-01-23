#!/usr/bin/env python2
import sys
import os.path
from mako.template import Template

import tcolor

def hi(fg=None, bg=None, bold=None, italic=None):
    parts = []
    if fg:
        parts.append(('guifg', '#' + fg))
        parts.append(('ctermfg', tcolor.find_nearest(fg)[1]))

    if bg:
        parts.append(('guibg', '#' + bg))
        parts.append(('ctermbg', tcolor.find_nearest(bg)[1]))

    if bold is not None:
        parts.append(('cterm', 'bold'))
        parts.append(('gui', 'bold'))

    if italic is not None:
        parts.append(('gui', 'italic'))

    return ' '.join('{}={}'.format(*r) for r in parts)


if __name__ == '__main__':
    tpl = Template(filename=sys.argv[1])
    name = tpl.module.colors_name
    fname = os.path.join('colors', name + '.vim')
    with open(fname, 'w') as f:
        f.write(tpl.render(hi=hi))
