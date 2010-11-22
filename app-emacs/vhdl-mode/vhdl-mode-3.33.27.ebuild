# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/vhdl-mode/Attic/vhdl-mode-3.33.27.ebuild,v 1.5 2010/11/22 20:38:46 ulm Exp $

inherit elisp eutils

DESCRIPTION="VHDL-mode for Emacs"
HOMEPAGE="http://www.iis.ee.ethz.ch/~zimmi/emacs/vhdl-mode.html"
SRC_URI="http://www.iis.ee.ethz.ch/~zimmi/emacs/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

SITEFILE=50${PN}-gentoo.el
DOCS="ChangeLog README"

src_unpack() {
	unpack ${A}
	cd "${S}"
	rm site-start.* || die "rm failed"
	epatch "${FILESDIR}/${PN}-info-dir-gentoo.patch"
}

src_install() {
	elisp_src_install
	doinfo vhdl-mode.info
}
