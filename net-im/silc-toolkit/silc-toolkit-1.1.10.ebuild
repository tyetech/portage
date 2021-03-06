# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-im/cvs-repo/gentoo-x86/net-im/silc-toolkit/silc-toolkit-1.1.10.ebuild,v 1.10 2012/05/28 08:53:17 scarabeus Exp $

EAPI=4

inherit eutils

DESCRIPTION="SDK for the SILC protocol"
HOMEPAGE="http://silcnet.org/"
SRC_URI="http://silcnet.org/download/toolkit/sources/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 sparc x86 ~x86-fbsd"
IUSE="debug ipv6"

RDEPEND=""
DEPEND="virtual/pkgconfig"

src_prepare() {
	# They have incorrect DESTDIR usage
	sed -i \
		"s/^\(pkgconfigdir =\) \$(libdir)\/pkgconfig/\1	\/usr\/$(get_libdir)\/pkgconfig/"\
		"${S}"/lib/Makefile.{am,in}
}

src_configure() {
	econf \
		--datadir="${EPREFIX}/usr/share/${PN}" \
		--datarootdir="${EPREFIX}/usr/share/${PN}" \
		--includedir="${EPREFIX}/usr/include/${PN}" \
		--sysconfdir="${EPREFIX}/etc/silc" \
		--libdir="${EPREFIX}/usr/$(get_libdir)/${PN}" \
		--docdir="${EPREFIX}/usr/share/doc/${PF}" \
		--disable-optimizations \
		--with-simdir=/usr/$(get_libdir)/${PN}/modules \
		$(use_enable debug) \
		$(use_enable ipv6)
}
