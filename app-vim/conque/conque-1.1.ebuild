# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-vim/cvs-repo/gentoo-x86/app-vim/conque/Attic/conque-1.1.ebuild,v 1.1 2010/06/02 23:38:30 spatz Exp $

EAPI=3

VIM_PLUGIN_VIM_VERSION="7.1"
inherit vim-plugin

MY_P="${PN}_${PV}"

DESCRIPTION="vim plugin: Run interactive commands inside a Vim buffer"
HOMEPAGE="http://code.google.com/p/conque/"
SRC_URI="http://${PN}.googlecode.com/files/${MY_P}.tar.gz"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE=""

VIM_PLUGIN_HELPFILES="ConqueTerm"

S="${WORKDIR}/${MY_P}"
