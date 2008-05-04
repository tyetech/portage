# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-tex/cvs-repo/gentoo-x86/dev-tex/algorithms/Attic/algorithms-2005.07.05.ebuild,v 1.3 2008/05/04 08:03:03 drac Exp $

inherit latex-package

DESCRIPTION="algorithms -- an environment for describing algorithms"
HOMEPAGE="http://algorithms.berlios.de/"
SRC_URI="mirror://berlios/${PN}/${P//\./-}.tar.gz"
LICENSE="LGPL-2.1"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# tetex-3.0 includes algorithms
DEPEND="!>=app-text/tetex-3.0"
S="${WORKDIR}/${PN}"

src_install() {
	latex-package_src_install || die
	dodoc README THANKS
}
