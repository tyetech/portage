# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-chemistry/cvs-repo/gentoo-x86/sci-chemistry/probe/Attic/probe-2.11.050121.ebuild,v 1.2 2006/07/09 07:10:24 dberkholz Exp $

inherit toolchain-funcs

MY_P="${PN}.${PV}"
DESCRIPTION="Evaluates atomic packing within or between molecules"
HOMEPAGE="http://kinemage.biochem.duke.edu/software/probe.php"
SRC_URI="http://kinemage.biochem.duke.edu/ftpsite/pub/software/probe/${MY_P}.src.tgz"
LICENSE="richardson"
SLOT="0"
KEYWORDS="ppc x86"
IUSE=""
RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/${MY_P}"

src_unpack() {
	unpack ${A}

	# Respect CC
	sed -i \
		-e 's:cc:$(CC):g' \
		${S}/Makefile
}

src_compile() {
	emake \
		CC="$(tc-getCC)" \
		CFLAGS="${CFLAGS}" \
		MACHINEFLAGS="${LDFLAGS}" \
		|| die "make failed"
}

src_install() {
	dobin ${S}/probe
	dodoc ${S}/README*
}
