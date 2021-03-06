# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/libwacom/libwacom-0.5.ebuild,v 1.1 2012/05/19 08:43:58 tetromino Exp $

EAPI=4

inherit eutils

DESCRIPTION="Library for identifying Wacom tablets and their model-specific features"
HOMEPAGE="http://linuxwacom.sourceforge.net/"
SRC_URI="mirror://sourceforge/linuxwacom/${PN}/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc static-libs"

RDEPEND="dev-libs/glib:2
	sys-fs/udev[gudev]"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	doc? ( app-doc/doxygen )"

src_prepare() {
	# in next release
	epatch "${FILESDIR}/${P}-eraser.patch"
	epatch "${FILESDIR}/${P}-eraser-bamboo.patch"

	if ! use doc; then
		sed -e 's:^\(SUBDIRS = .* \)doc:\1:' -i Makefile.in || die "sed failed"
	fi
}

src_configure() {
	econf $(use_enable static-libs static)
}

src_install() {
	default
	dodir /lib/udev/rules.d
	# generate-udev-rules must be run from inside tools directory
	pushd tools > /dev/null
	./generate-udev-rules > "${ED}/lib/udev/rules.d/65-libwacom.rules" ||
		die "generating udev rules failed"
	popd > /dev/null
	use doc && dohtml -r doc/html/*
	find "${D}" -name '*.la' -exec rm -f {} + || die "la file removal failed"
}
