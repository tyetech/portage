# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-vim/cvs-repo/gentoo-x86/app-vim/automatictexplugin/automatictexplugin-12.1.ebuild,v 1.1 2012/09/26 21:17:53 radhermit Exp $

EAPI="4"
VIM_PLUGIN_VIM_VERSION="7.3"

inherit vim-plugin

MY_P="AutomaticTexPlugin_${PV}"
DESCRIPTION="vim plugin: a comprehensive plugin for editing LaTeX files"
HOMEPAGE="http://atp-vim.sourceforge.net/"
SRC_URI="mirror://sourceforge/atp-vim/releases/${MY_P}.tar.gz"
LICENSE="GPL-3"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"

VIM_PLUGIN_HELPFILES="automatic-tex-plugin.txt"

RDEPEND="|| ( app-editors/vim[python] app-editors/gvim[python] )
	!app-vim/vim-latex
	app-vim/align
	app-text/wdiff
	>=dev-lang/python-2.7
	dev-python/psutil
	dev-tex/latexmk
	dev-tex/detex
	virtual/tex-base"
