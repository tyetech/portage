# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-libs/cvs-repo/gentoo-x86/sci-libs/gts/gts-20100321-r3.ebuild,v 1.3 2012/05/04 08:22:53 jdhore Exp $

EAPI=2

inherit eutils fortran-2 autotools

DESCRIPTION="GNU Triangulated Surface Library"
HOMEPAGE="http://gts.sourceforge.net/"
SRC_URI="mirror://gentoo/${P}.tar.gz"

SLOT="0"
LICENSE="LGPL-2"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="doc examples test"

RDEPEND="
	virtual/fortran

	dev-libs/glib:2
	!<=sci-chemistry/ccp4-apps-6.1.3-r2"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	test? ( media-libs/netpbm )"

# tests are failing
RESTRICT="test"

S="${WORKDIR}"/${PN}-snapshot-100321

src_prepare() {
	chmod +x test/*/*.sh
	epatch "${FILESDIR}"/${P}-examples.patch
	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	mv "${D}"/usr/bin/{,gts-}split || die
	mv "${D}"/usr/bin/{,gts-}merge || die
	mv "${D}"/usr/bin/{,gts-}smooth || die
	dodoc AUTHORS ChangeLog NEWS README THANKS TODO || die

	if use examples; then
		insinto /usr/share/doc/${PF}/examples
		doins examples/*.c || die "Failed to install examples"
	fi

	# install additional docs
	if use doc; then
		dohtml doc/html/* || die
	fi
}
