# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-vim/cvs-repo/gentoo-x86/app-vim/wikipedia-syntax/Attic/wikipedia-syntax-20050212.ebuild,v 1.14 2010/10/07 04:08:27 leio Exp $

inherit vim-plugin

DESCRIPTION="vim plugin: Wikipedia syntax highlighting"
HOMEPAGE="http://en.wikipedia.org/wiki/Wikipedia:Text_editor_support#Vim"
LICENSE="as-is"
KEYWORDS="alpha amd64 arm ~hppa ia64 ~mips ppc ppc64 s390 sh sparc x86"
IUSE=""

VIM_PLUGIN_HELPTEXT=\
"This plugin provides syntax highlighting for Wikipedia article
files. Detection is by filename (*.wiki)."
VIM_PLUGIN_MESSAGES="filetype"
