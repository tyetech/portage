# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-sci/cvs-repo/gentoo-x86/app-sci/primer3/Attic/primer3-0.9.ebuild,v 1.4 2004/08/10 23:15:36 ribosome Exp $

DESCRIPTION="Design primers for PCR reactions."
HOMEPAGE="http://frodo.wi.mit.edu/primer3/primer3_code.html"
SRC_URI="http://frodo.wi.mit.edu/primer3/primer3_0_9_test.tar.gz"
LICENSE="whitehead"

SLOT="0"
KEYWORDS="x86 ~ppc"
IUSE=""

S=${WORKDIR}/${PN}_0_9_test/src

src_compile() {
	emake || die
}

src_install () {
	dobin primer3_core
	dodoc release_notes ../README ../example
}
