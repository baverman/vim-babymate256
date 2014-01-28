#!/usr/bin/env python2
import sys
import os.path
import argparse

from mako.template import Template

import tcolor


def make_hi(module, use_bold=True):
    colors = set()
    def get_256_color(color):
        c256 = tcolor.find_nearest(color)[1]
        colors.add((int(c256), color.upper()))
        return c256

    def hi(fg=None, bg=None, bold=None, italic=None, underline=None, reverse=None):
        parts = []
        if fg:
            parts.append(('guifg', '#' + fg))
            parts.append(('ctermfg', get_256_color(fg)))

        if bg:
            parts.append(('guibg', '#' + bg))
            parts.append(('ctermbg', get_256_color(bg)))

        attrs = []
        if use_bold and bold:
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

    bgfix = lambda: r'\033]11;#{}\007'.format(module.background)
    cfix = lambda: r'\033]4;{}\007'.format(
        ';'.join('{};#{}'.format(*r) for r in sorted(colors)))

    hi.xterm = lambda: bgfix() + cfix()
    hi.urxvt = cfix
    return hi


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Render vim colorscheme file')
    parser.add_argument('--disable-bold', dest='use_bold', action='store_false', default=True)
    parser.add_argument('template')

    args = parser.parse_args()

    tpl = Template(filename=args.template)
    name = tpl.module.colors_name
    fname = os.path.join('colors', name + '.vim')
    with open(fname, 'w') as f:
        f.write(tpl.render(hi=make_hi(tpl.module, args.use_bold)))
