# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/gnustep-apps/cvs-repo/gentoo-x86/gnustep-apps/terminal/terminal-0.9.7.ebuild,v 1.5 2012/06/07 18:38:59 xmw Exp $

EAPI=2

inherit gnustep-2

S=${WORKDIR}/${P/t/T}

DESCRIPTION="A terminal emulator for GNUstep"
HOMEPAGE="http://www.nongnu.org/terminal/"
SRC_URI="http://savannah.nongnu.org/download/gap/${P/t/T}.tar.gz"

LICENSE="GPL-2"
KEYWORDS="amd64 ppc x86 ~x86-fbsd"
SLOT="0"
IUSE=""

RDEPEND="!x11-terms/terminal" #376257
DEPEND="${RDEPEND}"

src_prepare() {
	# Correct link command for --as-needed
	sed -i -e "s/Terminal_LDFLAGS/ADDITIONAL_TOOL_LIBS/" GNUmakefile || die "sed failed"
}
