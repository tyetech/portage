# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-libs/cvs-repo/gentoo-x86/sci-libs/ogdi/ogdi-3.1.5-r1.ebuild,v 1.15 2012/04/26 16:25:40 jlec Exp $

inherit toolchain-funcs eutils

DESCRIPTION="Open Geographical Datastore Interface, a GIS support library"
HOMEPAGE="http://ogdi.sourceforge.net/"
SRC_URI="mirror://sourceforge/ogdi/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 hppa ppc ppc64 sparc x86"
IUSE=""

DEPEND="
	<sci-libs/proj-4.8.0
	sys-libs/zlib
	dev-libs/expat"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}"/${P}-fpic.patch
}

src_compile() {
	export TOPDIR="${S}"
	export TARGET=`uname`
	export CFG="release"
	export LD_LIBRARY_PATH=$TOPDIR/bin/${TARGET}

	econf --with-projlib="-L/usr/$(get_libdir) -lproj" \
		--with-zlib --with-expat

	# bug #299239
	emake -j1 || die "make failed"
}

src_install() {
	mv "${S}"/bin/Linux/*.so "${S}"/lib/Linux/. || die "lib move failed"
	dobin "${S}"/bin/Linux/*
	insinto /usr/include
	doins ogdi/include/ecs.h ogdi/include/ecs_util.h
	dolib.so lib/Linux/*.so
	dosym libogdi31.so /usr/$(get_libdir)/libogdi.so || die "symlink failed"
	dodoc ChangeLog NEWS README VERSION
}
