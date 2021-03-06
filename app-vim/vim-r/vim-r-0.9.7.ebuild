# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-vim/cvs-repo/gentoo-x86/app-vim/vim-r/vim-r-0.9.7.ebuild,v 1.1 2012/09/18 03:45:24 radhermit Exp $

EAPI="4"
VIM_PLUGIN_VIM_VERSION="7.3"

inherit vim-plugin

DESCRIPTION="vim plugin: integrate vim with R"
HOMEPAGE="http://www.vim.org/scripts/script.php?script_id=2628"
LICENSE="public-domain"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-lang/R
	|| ( app-vim/conque app-vim/screen )"

VIM_PLUGIN_HELPFILES="r-plugin.txt"
