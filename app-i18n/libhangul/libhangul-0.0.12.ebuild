# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-i18n/cvs-repo/gentoo-x86/app-i18n/libhangul/libhangul-0.0.12.ebuild,v 1.6 2012/05/03 19:24:26 jdhore Exp $

EAPI="3"

DESCRIPTION="libhangul is a generalized and portable library for processing hangul."
HOMEPAGE="http://kldp.net/projects/hangul/"
SRC_URI="http://kldp.net/frs/download.php/5855/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE="nls static-libs test"

RDEPEND="nls? ( virtual/libintl )"
DEPEND="nls? ( sys-devel/gettext )
	virtual/pkgconfig
	test? ( dev-libs/check )"

src_configure() {
	econf \
		$(use_enable nls) \
		$(use_enable static-libs static) || die
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"

	dodoc AUTHORS ChangeLog NEWS README || die
}
