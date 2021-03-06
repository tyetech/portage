# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-dns/cvs-repo/gentoo-x86/net-dns/bind-dns-keygen/bind-dns-keygen-9.3.2.39.ebuild,v 1.1 2006/09/05 21:14:58 dberkholz Exp $

inherit rpm toolchain-funcs

# Tag for which Fedora Core version it's from
FCVER="6"

MY_PV="${PV%.*}-${PV##*.}"
MY_P="${PN%%-*}-${MY_PV}"
DESCRIPTION="A simple BIND key generator"
HOMEPAGE="http://fedora.redhat.com/projects/config-tools/"
SRC_URI="mirror://fedora/development/source/SRPMS/${MY_P}.fc${FCVER}.src.rpm"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~ppc ~x86"
IUSE=""
RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}"

src_compile() {
	$(tc-getCC) ${CFLAGS} -o ${PN#*-} ${PN##*-}.c || die "compile failed"
}

src_install() {
	dosbin ${PN#*-} || die "dosbin failed"
}
