# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/vhdl-mode/Attic/vhdl-mode-3.33.8.ebuild,v 1.3 2007/07/13 07:25:16 mr_bones_ Exp $

inherit elisp

DESCRIPTION="VHDL-mode for Emacs"
HOMEPAGE="http://opensource.ethz.ch/emacs/vhdl-mode.html"
SRC_URI="http://opensource.ethz.ch/emacs/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc-macos ~x86"

DEPEND="|| ( app-emacs/cedet app-emacs/speedbar )"
IUSE=""

SITEFILE=50vhdl-mode-gentoo.el

src_unpack() {
	unpack ${A}
	rm "${S}"/{sb-image,dframe,speedbar,hideshow,site-start}.el*
}
