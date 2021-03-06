# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-auth/cvs-repo/gentoo-x86/sys-auth/pam_bioapi/pam_bioapi-0.4.0.ebuild,v 1.4 2008/11/30 16:16:29 maekke Exp $

inherit eutils toolchain-funcs

DESCRIPTION="PAM interface to bioapi package"
HOMEPAGE="http://code.google.com/p/pam-bioapi/"
SRC_URI="http://pam-bioapi.googlecode.com/files/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND="sys-auth/bioapi
	sys-libs/pam
	dev-db/sqlite"
RDEPEND="${DEPEND}
	sys-auth/tfm-fingerprint"

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}"/${P}-headers.patch #241322
}

src_compile() {
	econf --sbindir=/sbin || die
	emake || die
}

src_install() {
	emake install DESTDIR="${D}" || die
	dodoc AUTHORS ChangeLog NEWS README TODO

	dodir /$(get_libdir)
	mv "${D}"/usr/$(get_libdir)/{lib*.so*,security} "${D}"/$(get_libdir)/ || die
	rm -f "${D}"/$(get_libdir)/security/*.la
	gen_usr_ldscript libbirdb.so libbirdb_sqlite3.so
}
