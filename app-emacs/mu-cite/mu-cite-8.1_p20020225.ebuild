# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/mu-cite/Attic/mu-cite-8.1_p20020225.ebuild,v 1.2 2005/01/01 13:54:50 eradicator Exp $

inherit elisp

IUSE=""

MY_P="${PN}-200202250931"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="Message citation utilities for emacsen"
HOMEPAGE="http://www.jpl.org/elips/mu/"
SRC_URI="http://www.jpl.org/elips/mu/snapshots/${MY_P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86 ~ppc-macos"

RDEPEND="app-emacs/apel
	virtual/flim"

SITEFILE="50mu-cite-gentoo.el"

src_compile() {
	emake EMACS=emacs || die
}

src_install() {
	elisp_src_install

	dodoc ChangeLog NEWS README.en
}
