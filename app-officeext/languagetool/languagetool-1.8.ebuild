# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-officeext/cvs-repo/gentoo-x86/app-officeext/languagetool/languagetool-1.8.ebuild,v 1.2 2012/08/03 13:10:58 scarabeus Exp $

EAPI=4

MY_P="LanguageTool-${PV}"

OO_EXTENSIONS=(
	"${MY_P}.oxt"
)

inherit office-ext

DESCRIPTION="Style and Grammar Checker for libreoffice"
HOMEPAGE="http://www.languagetool.org/"
SRC_URI="http://www.languagetool.org/download/${MY_P}.oxt"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	virtual/ooo[java]
"
